.class public final Lcom/paypal/android/sdk/payments/PaymentMethodActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/paypal/android/sdk/cP;

.field private h:Lcom/paypal/android/sdk/payments/aS;

.field private i:Lcom/paypal/android/sdk/payments/PayPalService;

.field private final j:Landroid/content/ServiceConnection;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/bt;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/bt;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->j:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;Lcom/paypal/android/sdk/payments/PayPalService;)Lcom/paypal/android/sdk/payments/PayPalService;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/PayPalConfiguration;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->e:Lcom/paypal/android/sdk/cD;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->a:Lcom/paypal/android/sdk/payments/bk;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/bk;Lio/card/payment/CreditCard;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e:Z

    return p1
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->m:Landroid/widget/ImageView;

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAADcAAAAsCAYAAADByiAeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAohJREFUeNrcWYGRgjAQJMwXQAl0IFbwWMFrBS8VvHYAFagVoBVIB2IFaAV8B08H/GUm/GA+CUouBL2ZTByEwCZ3m70LcRCsrusQutDBswranhBSOTYNgC1rM1ZA82yD+6nN2Urn21xNYAF0Jmf33Ro45DhDH9+1ObN3mMe84yVXTusd7ojjTds7iIzeoZtAU7mE1/E/5p536fj/yvbFb+VmDK2sn9c27b2RcKuVOs9vdJVnVN0QBsyHrjAQQ9RNMmhn5j5tC1g8zQ0A3AK4dbNqKbJ7nJjevIeYKN3HBpSOjy2h6DjznuxLQR4xpZvbYj4MX5+CO2S9aJvGCCEL+LnGEgBv2EEsWRXqIj4HJpeA3ML9FRq5IbhioEiHCsVz6V9s/H9WlwdiDHArSfycHpicpWSM0ia4UvJRRY+xlsiJcKwrnBPBtbSnLEt594b427O9cvisgL2cr6XobMobwbWdDXAitvvUTW8E5JTbAHcWXMOQUiHnHRcb4CrBXoYhBiYSjTooOH5GfSRB4I8BnI/xAV0eoTNxaOCUWfBjdh0DOFFsZAjgMkGtZnBCCTH3pIb2BewY2gDn8bkbU/q5xpgJ5t6pK7++BNcWHdUqmUV8GsQUj72irGD1KNvNHgQY8VJOIccGz+c8ybhxR9pyVOSCsW4+11S/asOZeMCIwWvdnyvuxygzJhgrh3pYiHiYqZ3P8XXI4t6SniTJ3WAWhjHBNUripKqNKNyQFoVXmB+DFXOqWDyw/tLEGItBCv6DpUkmTouSBlyJqOrHYlHjlocXA0Y9JGvAbSWpxrPajoaAy6mKVwBIDyHjG7ZkanyqKXxtu+IacEQ3bCmgZt8gixlhZdEBzK8AAwBIvuGtI5K/kgAAAABJRU5ErkJggg=="

    invoke-static {v1, p0}, Lcom/paypal/android/sdk/bu;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->m:Landroid/widget/ImageView;

    sget-object v1, Lcom/paypal/android/sdk/cG;->br:Lcom/paypal/android/sdk/cG;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->showDialog(I)V

    return-void
.end method

.method private c()V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".refreshPayment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/n;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->h()V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->h:Lcom/paypal/android/sdk/payments/aS;

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

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->c:Lcom/paypal/android/sdk/cU;

    iget-object v1, v1, Lcom/paypal/android/sdk/cU;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/PayPalPayment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->c:Lcom/paypal/android/sdk/cU;

    iget-object v1, v1, Lcom/paypal/android/sdk/cU;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bI;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/paypal/android/sdk/payments/bv;

    invoke-direct {v0, p0, v8}, Lcom/paypal/android/sdk/payments/bv;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;B)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/bv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/bF;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bF;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v5, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bF;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/d;->a(Lcom/paypal/android/sdk/bF;)Lio/card/payment/CardType;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->g:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/d;->a(Landroid/app/Activity;Lio/card/payment/CardType;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lio/card/payment/CardType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/sdk/cG;->z:Lcom/paypal/android/sdk/cG;

    invoke-static {v0}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v1, v1, Lcom/paypal/android/sdk/cP;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->k:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->k:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b()V

    :goto_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->i:Lcom/paypal/android/sdk/cI;

    iget-object v0, v0, Lcom/paypal/android/sdk/cI;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->b:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ax:Lcom/paypal/android/sdk/cG;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->k:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->k:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->f:Lcom/paypal/android/sdk/cD;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/bF;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bF;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sget-object v1, Lcom/paypal/android/sdk/payments/bk;->c:Lcom/paypal/android/sdk/payments/bk;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/bk;Lio/card/payment/CreditCard;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/card/payment/CardIOActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    const-string v2, "io.card.payment.languageOrLocale"

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "io.card.payment.requireExpiry"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requireCVV"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "io.card.payment.requirePostalCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startActivityForResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v3}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->k:Z

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)Lcom/paypal/android/sdk/payments/PayPalService;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    return-object v0
.end method

.method static synthetic h(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c()V

    return-void
.end method

.method static synthetic i(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V
    .locals 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v2, Lcom/paypal/android/sdk/cD;->c:Lcom/paypal/android/sdk/cD;

    invoke-virtual {v0, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    :cond_0
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->s()Lcom/paypal/android/sdk/bF;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_1
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoAdvanceToPayPalConfirmIfLoggedIn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v2}, Lcom/paypal/android/sdk/payments/n;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->i()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/by;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/by;->h:Lcom/paypal/android/sdk/bI;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/bI;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->showDialog(I)V

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    new-instance v2, Lcom/paypal/android/sdk/payments/bq;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/bq;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    :cond_4
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c()V

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult (requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "io.card.payment.scanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "io.card.payment.scanResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lio/card/payment/CreditCard;

    const/4 v1, 0x2

    sget-object v2, Lcom/paypal/android/sdk/payments/bk;->b:Lcom/paypal/android/sdk/payments/bk;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.paypal.android.sdk.paypalConfiguration"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/PaymentConfirmActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/payments/bk;Lio/card/payment/CreditCard;Lcom/paypal/android/sdk/payments/PayPalConfiguration;Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PaymentConfirmation;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.paypal.android.sdk.paymentConfirmation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p2, v1}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->finish()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    iput-boolean v5, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onBackPressed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/cD;->d:Lcom/paypal/android/sdk/cD;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/cD;)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->b(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/d;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d()V

    new-instance v0, Lcom/paypal/android/sdk/cP;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/cP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    new-instance v0, Lcom/paypal/android/sdk/payments/aS;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paypal/android/sdk/payments/aS;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->h:Lcom/paypal/android/sdk/payments/aS;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->l:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bi:Lcom/paypal/android/sdk/cG;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/cG;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->f:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/cG;->aw:Lcom/paypal/android/sdk/cG;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->b:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/cG;->ar:Lcom/paypal/android/sdk/cG;

    invoke-static {v1}, Lcom/paypal/android/sdk/cE;->a(Lcom/paypal/android/sdk/cG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/bm;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bm;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->b:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/bn;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bn;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/bo;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bo;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->k:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/bp;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/bp;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->finish()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->b:Ljava/util/Timer;

    return-void

    :cond_1
    const-string v0, "PP_PreventAutoLogin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    const-string v0, "PP_PageTrackingSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    goto :goto_0
.end method

.method protected final onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/paypal/android/sdk/cG;->as:Lcom/paypal/android/sdk/cG;

    sget-object v1, Lcom/paypal/android/sdk/cG;->D:Lcom/paypal/android/sdk/cG;

    new-instance v2, Lcom/paypal/android/sdk/payments/br;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/br;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/cG;Lcom/paypal/android/sdk/cG;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/paypal/android/sdk/cG;->bj:Lcom/paypal/android/sdk/cG;

    sget-object v1, Lcom/paypal/android/sdk/cG;->B:Lcom/paypal/android/sdk/cG;

    new-instance v2, Lcom/paypal/android/sdk/payments/bs;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/bs;-><init>(Lcom/paypal/android/sdk/payments/PaymentMethodActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/cG;Lcom/paypal/android/sdk/cG;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/paypal/android/sdk/cG;->c:Lcom/paypal/android/sdk/cG;

    sget-object v1, Lcom/paypal/android/sdk/cG;->bp:Lcom/paypal/android/sdk/cG;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/d;->a(Landroid/content/Context;Lcom/paypal/android/sdk/cG;Lcom/paypal/android/sdk/cG;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->k:Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->d()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->i:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c()V

    :cond_0
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onSaveInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PP_PreventAutoLogin"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PP_PageTrackingSent"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/PaymentMethodActivity;->g:Lcom/paypal/android/sdk/cP;

    iget-object v0, v0, Lcom/paypal/android/sdk/cP;->c:Lcom/paypal/android/sdk/cU;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cU;->a()V

    return-void
.end method

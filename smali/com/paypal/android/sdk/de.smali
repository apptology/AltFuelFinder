.class public final Lcom/paypal/android/sdk/de;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/paypal/android/sdk/dd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/dd;

    const-class v1, Lcom/paypal/android/sdk/df;

    sget-object v2, Lcom/paypal/android/sdk/dv;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/dd;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    sput-object v0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    return-void
.end method

.method public static a(Lcom/paypal/android/sdk/df;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/dd;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/paypal/android/sdk/df;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    sget-object v1, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    invoke-virtual {v1, p1}, Lcom/paypal/android/sdk/dd;->b(Ljava/lang/String;)Lcom/paypal/android/sdk/dg;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/paypal/android/sdk/dd;->a(Ljava/lang/Enum;Lcom/paypal/android/sdk/dg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    const-string v1, "io.card.payment.languageOrLocale"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/dd;->a(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/braintreepayments/api/PayPalHelper;
.super Ljava/lang/Object;
.source "PayPalHelper.java"


# static fields
.field private static final OFFLINE:Ljava/lang/String; = "offline"

.field protected static sEnableSignatureVerification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/braintreepayments/api/PayPalHelper;->sEnableSignatureVerification:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Non-instantiable class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static buildPayPalConfiguration(Lcom/braintreepayments/api/models/PayPalConfiguration;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    .locals 3
    .param p0, "configuration"    # Lcom/braintreepayments/api/models/PayPalConfiguration;

    .prologue
    .line 143
    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;-><init>()V

    .line 145
    .local v0, "paypalConfiguration":Lcom/paypal/android/sdk/payments/PayPalConfiguration;
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->clientId(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->merchantName(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getUserAgreementUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->merchantUserAgreementUri(Landroid/net/Uri;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->merchantPrivacyPolicyUri(Landroid/net/Uri;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "mock"

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->environment(Ljava/lang/String;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    goto :goto_0
.end method

.method protected static buildPayPalServiceIntent(Landroid/content/Context;Lcom/braintreepayments/api/models/PayPalConfiguration;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/braintreepayments/api/models/PayPalConfiguration;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.paypal.android.sdk.paypalConfiguration"

    invoke-static {p1}, Lcom/braintreepayments/api/PayPalHelper;->buildPayPalConfiguration(Lcom/braintreepayments/api/models/PayPalConfiguration;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const-string v1, "com.paypal.android.sdk.enableAuthenticatorSecurity"

    sget-boolean v2, Lcom/braintreepayments/api/PayPalHelper;->sEnableSignatureVerification:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "com.paypal.android.sdk.baseEnvironmentUrl"

    invoke-virtual {p1}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getDirectBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "com.paypal.android.sdk.enableStageSsl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    :cond_0
    return-object v0
.end method

.method public static getBuilderFromActivity(Landroid/app/Activity;ILandroid/content/Intent;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 83
    const/4 v7, -0x1

    if-ne p1, v7, :cond_2

    .line 84
    new-instance v3, Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    invoke-direct {v3}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;-><init>()V

    .line 85
    .local v3, "paypalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    if-eqz p0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->getClientMetadataId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->correlationId(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    .line 89
    :cond_0
    const-string v7, "com.paypal.android.sdk.loginConfirmation"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;

    .line 91
    .local v4, "paypalTouchConfirmation":Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;
    if-eqz v4, :cond_1

    .line 94
    :try_start_0
    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "response"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 101
    .local v5, "paypalTouchResponse":Lorg/json/JSONObject;
    const-string v6, "authorization_code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->authorizationCode(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v6

    const-string v7, "paypal-app"

    invoke-virtual {v6, v7}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    .line 104
    const-string v6, "email"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->email(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    .line 125
    .end local v3    # "paypalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .end local v4    # "paypalTouchConfirmation":Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;
    .end local v5    # "paypalTouchResponse":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 97
    .restart local v3    # "paypalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .restart local v4    # "paypalTouchConfirmation":Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;
    :catch_0
    move-exception v2

    .local v2, "ignored":Lorg/json/JSONException;
    move-object v3, v6

    .line 98
    goto :goto_0

    .line 106
    .end local v2    # "ignored":Lorg/json/JSONException;
    :cond_1
    const-string v6, "com.paypal.android.sdk.authorization"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/PayPalAuthorization;

    .line 108
    .local v0, "authorization":Lcom/paypal/android/sdk/payments/PayPalAuthorization;
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalAuthorization;->getAuthorizationCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->authorizationCode(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    move-result-object v6

    const-string v7, "paypal-sdk"

    invoke-virtual {v6, v7}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;

    .line 111
    :try_start_1
    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalAuthorization;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "display_string"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/braintreepayments/api/models/PayPalAccountBuilder;->email(Ljava/lang/String;)Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 115
    .end local v1    # "email":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 121
    .end local v0    # "authorization":Lcom/paypal/android/sdk/payments/PayPalAuthorization;
    .end local v3    # "paypalAccountBuilder":Lcom/braintreepayments/api/models/PayPalAccountBuilder;
    .end local v4    # "paypalTouchConfirmation":Lcom/paypal/android/sdk/payments/PayPalTouchConfirmation;
    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    .line 122
    new-instance v6, Lcom/braintreepayments/api/exceptions/ConfigurationException;

    const-string v7, "Result extras were invalid"

    invoke-direct {v6, v7}, Lcom/braintreepayments/api/exceptions/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    move-object v3, v6

    .line 125
    goto :goto_0
.end method

.method public static isPayPalIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 138
    const-string v0, "com.paypal.android.sdk.loginConfirmation"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.paypal.android.sdk.authorization"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static launchPayPal(Landroid/app/Activity;ILcom/braintreepayments/api/models/PayPalConfiguration;Ljava/util/List;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "configuration"    # Lcom/braintreepayments/api/models/PayPalConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lcom/braintreepayments/api/models/PayPalConfiguration;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "additionalScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    sget-boolean v4, Lcom/braintreepayments/api/PayPalHelper;->sEnableSignatureVerification:Z

    invoke-static {v3, v4}, Lcom/paypal/android/sdk/payments/PayPalTouch;->available(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/braintreepayments/api/models/PayPalConfiguration;->getTouchDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    const-class v1, Lcom/paypal/android/sdk/payments/PayPalTouchActivity;

    .line 53
    .local v1, "klass":Ljava/lang/Class;
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_EMAIL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->PAYPAL_SCOPE_FUTURE_PAYMENTS:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v2, "scopes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 59
    invoke-interface {v2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.paypal.android.sdk.requested_scopes"

    new-instance v5, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-direct {v5, v2}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;-><init>(Ljava/util/Set;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.paypal.android.sdk.paypalConfiguration"

    invoke-static {p2}, Lcom/braintreepayments/api/PayPalHelper;->buildPayPalConfiguration(Lcom/braintreepayments/api/models/PayPalConfiguration;)Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "klass":Ljava/lang/Class;
    .end local v2    # "scopes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-class v1, Lcom/paypal/android/sdk/payments/PayPalProfileSharingActivity;

    .restart local v1    # "klass":Ljava/lang/Class;
    goto :goto_0
.end method

.method protected static startPaypal(Landroid/content/Context;Lcom/braintreepayments/api/models/PayPalConfiguration;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/braintreepayments/api/models/PayPalConfiguration;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/braintreepayments/api/PayPalHelper;->stopPaypalService(Landroid/content/Context;)V

    .line 39
    invoke-static {p0, p1}, Lcom/braintreepayments/api/PayPalHelper;->buildPayPalServiceIntent(Landroid/content/Context;Lcom/braintreepayments/api/models/PayPalConfiguration;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method

.method protected static stopPaypalService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 69
    return-void
.end method

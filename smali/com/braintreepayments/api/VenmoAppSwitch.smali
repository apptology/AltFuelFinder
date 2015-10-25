.class public Lcom/braintreepayments/api/VenmoAppSwitch;
.super Lcom/braintreepayments/api/AppSwitch;
.source "VenmoAppSwitch.java"


# static fields
.field public static final VENMO_SOURCE:Ljava/lang/String; = "venmo-app"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braintreepayments/api/models/Configuration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/braintreepayments/api/models/Configuration;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/braintreepayments/api/AppSwitch;-><init>(Landroid/content/Context;Lcom/braintreepayments/api/models/Configuration;)V

    .line 16
    return-void
.end method

.method public static isVenmoAppSwitchResponse(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v0, "com.braintreepayments.api.EXTRA_PAYMENT_METHOD_NONCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getAppSwitchActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "CardChooserActivity"

    return-object v0
.end method

.method protected getCertificateIssuer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "CN=Andrew Kortina,OU=Engineering,O=Venmo,L=Philadelphia,ST=PA,C=US"

    return-object v0
.end method

.method protected getCertificateSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "CN=Andrew Kortina,OU=Engineering,O=Venmo,L=Philadelphia,ST=PA,C=US"

    return-object v0
.end method

.method protected getLaunchIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/braintreepayments/api/AppSwitch;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.braintreepayments.api.MERCHANT_ID"

    iget-object v3, p0, Lcom/braintreepayments/api/VenmoAppSwitch;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/Configuration;->getMerchantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/braintreepayments/api/VenmoAppSwitch;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/Configuration;->getVenmoState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "com.braintreepayments.api.OFFLINE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/braintreepayments/api/VenmoAppSwitch;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v1}, Lcom/braintreepayments/api/models/Configuration;->getVenmoState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "com.braintreepayments.api.OFFLINE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.venmo"

    return-object v0
.end method

.method protected getPublicKeyHashCode()I
    .locals 1

    .prologue
    .line 56
    const v0, -0x7bb3ee3

    return v0
.end method

.method protected handleAppSwitchResponse(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 72
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 73
    const-string v0, "com.braintreepayments.api.EXTRA_PAYMENT_METHOD_NONCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAvailable()Z
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/braintreepayments/api/AppSwitch;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braintreepayments/api/VenmoAppSwitch;->mConfiguration:Lcom/braintreepayments/api/models/Configuration;

    invoke-virtual {v0}, Lcom/braintreepayments/api/models/Configuration;->getVenmoState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/braintreepayments/api/models/CardBuilder;
.super Ljava/lang/Object;
.source "CardBuilder.java"

# interfaces
.implements Lcom/braintreepayments/api/models/PaymentMethod$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
        "<",
        "Lcom/braintreepayments/api/models/Card;",
        ">;"
    }
.end annotation


# instance fields
.field private mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

.field private mCard:Lcom/braintreepayments/api/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creditCard"
    .end annotation
.end field

.field private mIntegration:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    .line 19
    const-string v0, "custom"

    iput-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mIntegration:Ljava/lang/String;

    .line 20
    const-string v0, "form"

    iput-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mSource:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/braintreepayments/api/models/Card;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/Card;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    .line 24
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    iget-object v1, p0, Lcom/braintreepayments/api/models/CardBuilder;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/Card;->setSource(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/braintreepayments/api/models/Card$BillingAddress;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/Card$BillingAddress;-><init>()V

    iput-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    iget-object v1, p0, Lcom/braintreepayments/api/models/CardBuilder;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/Card;->setBillingAddress(Lcom/braintreepayments/api/models/Card$BillingAddress;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mBillingAddress:Lcom/braintreepayments/api/models/Card$BillingAddress;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/braintreepayments/api/models/Card;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/braintreepayments/api/models/CardBuilder;->build()Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method

.method public cardNumber(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->setCardNumber(Ljava/lang/String;)V

    .line 33
    return-object p0
.end method

.method public countryName(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setCountryName(Ljava/lang/String;)V

    .line 105
    return-object p0
.end method

.method public cvv(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "cvv"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->setCvv(Ljava/lang/String;)V

    .line 42
    return-object p0
.end method

.method public expirationDate(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "expirationDate"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->setExpirationDate(Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public expirationMonth(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "expirationMonth"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->setExpirationMonth(Ljava/lang/String;)V

    .line 51
    return-object p0
.end method

.method public expirationYear(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "expirationYear"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card;->setExpirationYear(Ljava/lang/String;)V

    .line 60
    return-object p0
.end method

.method public firstName(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setFirstName(Ljava/lang/String;)V

    .line 87
    return-object p0
.end method

.method public fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lcom/braintreepayments/api/models/Card;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/CardBuilder;->fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/Card;

    move-result-object v0

    return-object v0
.end method

.method public getApiPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "credit_cards"

    return-object v0
.end method

.method public getApiResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "creditCards"

    return-object v0
.end method

.method public integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 0
    .param p1, "integration"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/braintreepayments/api/models/CardBuilder;->mIntegration:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public bridge synthetic integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/CardBuilder;->integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public lastName(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setLastName(Ljava/lang/String;)V

    .line 96
    return-object p0
.end method

.method public locality(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setLocality(Ljava/lang/String;)V

    .line 114
    return-object p0
.end method

.method public postalCode(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setPostalCode(Ljava/lang/String;)V

    .line 123
    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setRegion(Ljava/lang/String;)V

    .line 132
    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/braintreepayments/api/models/CardBuilder;->mSource:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    iget-object v1, p0, Lcom/braintreepayments/api/models/CardBuilder;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/models/Card;->setSource(Ljava/lang/String;)V

    .line 162
    return-object p0
.end method

.method public bridge synthetic source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/CardBuilder;->source(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public streetAddress(Ljava/lang/String;)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 1
    .param p1, "streetAddress"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/braintreepayments/api/models/CardBuilder;->getBillingAddress()Lcom/braintreepayments/api/models/Card$BillingAddress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/Card$BillingAddress;->setStreetAddress(Ljava/lang/String;)V

    .line 141
    return-object p0
.end method

.method public toJson()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "creditCard"

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/CardBuilder;->build()Lcom/braintreepayments/api/models/Card;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "_meta"

    new-instance v2, Lcom/braintreepayments/api/models/Metadata;

    iget-object v3, p0, Lcom/braintreepayments/api/models/CardBuilder;->mIntegration:Ljava/lang/String;

    iget-object v4, p0, Lcom/braintreepayments/api/models/CardBuilder;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/braintreepayments/api/models/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/braintreepayments/api/models/CardBuilder;->toJson()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Z)Lcom/braintreepayments/api/models/CardBuilder;
    .locals 2
    .param p1, "validate"    # Z

    .prologue
    .line 146
    new-instance v0, Lcom/braintreepayments/api/models/PaymentMethodOptions;

    invoke-direct {v0}, Lcom/braintreepayments/api/models/PaymentMethodOptions;-><init>()V

    .line 147
    .local v0, "options":Lcom/braintreepayments/api/models/PaymentMethodOptions;
    invoke-virtual {v0, p1}, Lcom/braintreepayments/api/models/PaymentMethodOptions;->setValidate(Z)V

    .line 148
    iget-object v1, p0, Lcom/braintreepayments/api/models/CardBuilder;->mCard:Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v1, v0}, Lcom/braintreepayments/api/models/Card;->setOptions(Lcom/braintreepayments/api/models/PaymentMethodOptions;)V

    .line 149
    return-object p0
.end method

.method public bridge synthetic validate(Z)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/models/CardBuilder;->validate(Z)Lcom/braintreepayments/api/models/CardBuilder;

    move-result-object v0

    return-object v0
.end method

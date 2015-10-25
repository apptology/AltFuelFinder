.class public abstract Lcom/braintreepayments/api/models/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethod.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    }
.end annotation


# static fields
.field private static final PAYMENT_METHOD_COLLECTION_KEY:Ljava/lang/String; = "paymentMethods"

.field private static final PAYMENT_METHOD_TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field protected mNonce:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonce"
    .end annotation
.end field

.field protected mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "options"
    .end annotation
.end field

.field protected transient mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static parsePaymentMethods(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "paymentMethodsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/braintreepayments/api/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/braintreepayments/api/exceptions/ServerException;
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "paymentMethods"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 88
    .local v3, "paymentMethods":Lorg/json/JSONArray;
    if-nez v3, :cond_1

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 109
    :cond_0
    return-object v4

    .line 92
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "paymentMethodsList":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 95
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 96
    .local v2, "paymentMethod":Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "type":Ljava/lang/String;
    const-string v6, "CreditCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/braintreepayments/api/models/Card;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_3
    const-string v6, "PayPalAccount"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/braintreepayments/api/models/PayPalAccount;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    .end local v1    # "i":I
    .end local v2    # "paymentMethod":Lorg/json/JSONObject;
    .end local v3    # "paymentMethods":Lorg/json/JSONArray;
    .end local v4    # "paymentMethodsList":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/braintreepayments/api/exceptions/ServerException;

    const-string v7, "Parsing server response failed"

    invoke-direct {v6, v7}, Lcom/braintreepayments/api/exceptions/ServerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    .restart local v2    # "paymentMethod":Lorg/json/JSONObject;
    .restart local v3    # "paymentMethods":Lorg/json/JSONArray;
    .restart local v4    # "paymentMethodsList":Ljava/util/List;, "Ljava/util/List<Lcom/braintreepayments/api/models/PaymentMethod;>;"
    .restart local v5    # "type":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v6, "AndroidPayCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/braintreepayments/api/models/AndroidPayCard;

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/braintreepayments/api/models/PaymentMethod;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/braintreepayments/api/models/PaymentMethod;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/braintreepayments/api/models/PaymentMethod;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTypeLabel()Ljava/lang/String;
.end method

.method protected setOptions(Lcom/braintreepayments/api/models/PaymentMethodOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/braintreepayments/api/models/PaymentMethodOptions;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/braintreepayments/api/models/PaymentMethod;->mPaymentMethodOptions:Lcom/braintreepayments/api/models/PaymentMethodOptions;

    .line 38
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/braintreepayments/api/models/PaymentMethod;->mSource:Ljava/lang/String;

    .line 70
    return-void
.end method

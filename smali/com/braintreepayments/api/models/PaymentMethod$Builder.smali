.class public interface abstract Lcom/braintreepayments/api/models/PaymentMethod$Builder;
.super Ljava/lang/Object;
.source "PaymentMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/braintreepayments/api/models/PaymentMethod;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final METADATA_KEY:Ljava/lang/String; = "_meta"


# virtual methods
.method public abstract build()Lcom/braintreepayments/api/models/PaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract fromJson(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getApiPath()Ljava/lang/String;
.end method

.method public abstract getApiResource()Ljava/lang/String;
.end method

.method public abstract integration(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract source(Ljava/lang/String;)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract toJson()Ljava/util/Map;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract toJsonString()Ljava/lang/String;
.end method

.method public abstract validate(Z)Lcom/braintreepayments/api/models/PaymentMethod$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/braintreepayments/api/models/PaymentMethod$Builder",
            "<TT;>;"
        }
    .end annotation
.end method

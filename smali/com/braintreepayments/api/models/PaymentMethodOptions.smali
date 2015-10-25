.class public Lcom/braintreepayments/api/models/PaymentMethodOptions;
.super Ljava/lang/Object;
.source "PaymentMethodOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mValidate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValidate(Z)V
    .locals 0
    .param p1, "validate"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/braintreepayments/api/models/PaymentMethodOptions;->mValidate:Z

    .line 17
    return-void
.end method

.class public Lcom/braintreepayments/api/models/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field private mIntegration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integration"
    .end annotation
.end field

.field private mSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "integration"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/braintreepayments/api/models/Metadata;->mIntegration:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/braintreepayments/api/models/Metadata;->mSource:Ljava/lang/String;

    .line 13
    return-void
.end method

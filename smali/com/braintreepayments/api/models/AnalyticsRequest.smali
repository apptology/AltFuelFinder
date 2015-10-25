.class public Lcom/braintreepayments/api/models/AnalyticsRequest;
.super Ljava/lang/Object;
.source "AnalyticsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;,
        Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;
    }
.end annotation


# instance fields
.field public mAnalytics:[Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "analytics"
    .end annotation
.end field

.field public mMeta:Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_meta"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "integrationType"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;

    const/4 v1, 0x0

    new-instance v2, Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;

    invoke-direct {v2, p0, p2}, Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;-><init>(Lcom/braintreepayments/api/models/AnalyticsRequest;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/braintreepayments/api/models/AnalyticsRequest;->mAnalytics:[Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;

    .line 30
    new-instance v0, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;

    invoke-direct {v0, p0, p1, p3}, Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;-><init>(Lcom/braintreepayments/api/models/AnalyticsRequest;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/braintreepayments/api/models/AnalyticsRequest;->mMeta:Lcom/braintreepayments/api/models/AnalyticsRequest$Meta;

    .line 31
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

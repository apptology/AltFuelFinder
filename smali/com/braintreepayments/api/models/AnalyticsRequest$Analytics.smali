.class Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;
.super Ljava/lang/Object;
.source "AnalyticsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braintreepayments/api/models/AnalyticsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Analytics"
.end annotation


# instance fields
.field private mKind:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field final synthetic this$0:Lcom/braintreepayments/api/models/AnalyticsRequest;


# direct methods
.method public constructor <init>(Lcom/braintreepayments/api/models/AnalyticsRequest;Ljava/lang/String;)V
    .locals 0
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;->this$0:Lcom/braintreepayments/api/models/AnalyticsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/braintreepayments/api/models/AnalyticsRequest$Analytics;->mKind:Ljava/lang/String;

    .line 43
    return-void
.end method

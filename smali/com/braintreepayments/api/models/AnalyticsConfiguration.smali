.class public Lcom/braintreepayments/api/models/AnalyticsConfiguration;
.super Ljava/lang/Object;
.source "AnalyticsConfiguration.java"


# instance fields
.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/braintreepayments/api/models/AnalyticsConfiguration;->mUrl:Ljava/lang/String;

    return-object v0
.end method

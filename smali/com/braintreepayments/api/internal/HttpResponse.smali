.class public Lcom/braintreepayments/api/internal/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private mResponseBody:Ljava/lang/String;

.field private mResponseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/braintreepayments/api/internal/HttpResponse;->mResponseCode:I

    .line 10
    iput-object p2, p0, Lcom/braintreepayments/api/internal/HttpResponse;->mResponseBody:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/braintreepayments/api/internal/HttpResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/braintreepayments/api/internal/HttpResponse;->mResponseCode:I

    return v0
.end method

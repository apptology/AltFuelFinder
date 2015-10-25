.class public Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;
.super Ljava/lang/Object;
.source "ReservationDataKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reservation/ReservationDataKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentMethod"
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private gatewayAppId:Ljava/lang/String;

.field private gatewayKey:Ljava/lang/String;

.field private gatewayPassword:Ljava/lang/String;

.field private gatewayTitle:Ljava/lang/String;

.field private gatewayType:I

.field private others:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayType()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayType:I

    return v0
.end method

.method public getOthers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->others:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->currency:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setGatewayAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayAppId"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayAppId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setGatewayKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayKey"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayKey:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setGatewayPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayPassword"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayPassword:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setGatewayTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayTitle"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayTitle:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setGatewayType(I)V
    .locals 0
    .param p1, "gatewayType"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->gatewayType:I

    .line 170
    return-void
.end method

.method public setOthers(Ljava/lang/String;)V
    .locals 0
    .param p1, "others"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->others:Ljava/lang/String;

    .line 200
    return-void
.end method

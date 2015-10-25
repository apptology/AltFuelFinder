.class public Lcom/biznessapps/reservation/entities/ReservationEntity;
.super Lcom/biznessapps/location/entities/LocationEntity;
.source "ReservationEntity.java"


# static fields
.field public static final ORDER_STATE_CANCELLED:I = 0x2

.field private static final serialVersionUID:J = -0x7680620187b5ac97L


# instance fields
.field private appId:Ljava/lang/String;

.field private billingAddressId:Ljava/lang/String;

.field private checkoutMethod:I

.field private cost:F

.field private createTime:Ljava/util/Date;

.field private duration:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private locId:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private orderState:I

.field private paidAmount:F

.field private placedOn:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private timeFrom:Ljava/util/Date;

.field private timeTo:Ljava/util/Date;

.field private timeZone:I

.field private transactionId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingAddressId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->billingAddressId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckoutMethod()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->checkoutMethod:I

    return v0
.end method

.method public getCost()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->cost:F

    return v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->locId:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->orderState:I

    return v0
.end method

.method public getPaidAmount()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->paidAmount:F

    return v0
.end method

.method public getPlacedOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->placedOn:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFrom()Ljava/util/Date;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->timeFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeTo()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->timeTo:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeZone()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->timeZone:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->appId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setBillingAddressId(Ljava/lang/String;)V
    .locals 0
    .param p1, "billingAddressId"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->billingAddressId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCheckoutMethod(I)V
    .locals 0
    .param p1, "checkoutMethod"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->checkoutMethod:I

    .line 130
    return-void
.end method

.method public setCost(F)V
    .locals 0
    .param p1, "cost"    # F

    .prologue
    .line 145
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->cost:F

    .line 146
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->createTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;III)V
    .locals 9
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "timeFromValue"    # I
    .param p3, "timeToValue"    # I
    .param p4, "timeZone"    # I

    .prologue
    const-wide/32 v7, 0xea60

    .line 171
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->date:Ljava/util/Date;

    .line 174
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 176
    .local v0, "currentDate":J
    new-instance v4, Ljava/util/Date;

    int-to-long v5, p2

    mul-long/2addr v5, v7

    add-long/2addr v5, v0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->timeFrom:Ljava/util/Date;

    .line 177
    new-instance v4, Ljava/util/Date;

    int-to-long v5, p3

    mul-long/2addr v5, v7

    add-long/2addr v5, v0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->timeTo:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "currentDate":J
    .end local v2    # "dateFormatter":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->duration:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->itemId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setLocId(Ljava/lang/String;)V
    .locals 0
    .param p1, "locId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->locId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->note:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setOrderState(I)V
    .locals 0
    .param p1, "orderState"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->orderState:I

    .line 82
    return-void
.end method

.method public setPaidAmount(F)V
    .locals 0
    .param p1, "paidAmount"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->paidAmount:F

    .line 74
    return-void
.end method

.method public setPlacedOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "placedOn"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->placedOn:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->serviceName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->thumbnail:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setTimeZone(I)V
    .locals 0
    .param p1, "timeZone"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->timeZone:I

    .line 189
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->transactionId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationEntity;->userId:Ljava/lang/String;

    .line 50
    return-void
.end method

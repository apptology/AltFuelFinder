.class public Lcom/biznessapps/location/entities/LocationOpeningTime;
.super Ljava/lang/Object;
.source "LocationOpeningTime.java"


# instance fields
.field private day:Ljava/lang/String;

.field private openFrom:Ljava/lang/String;

.field private openTo:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->day:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->openFrom:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->openTo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->openFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->openTo:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->day:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setOpenFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "openFrom"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->openFrom:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setOpenTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "openTo"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->openTo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationOpeningTime;->time:Ljava/lang/String;

    .line 44
    return-void
.end method

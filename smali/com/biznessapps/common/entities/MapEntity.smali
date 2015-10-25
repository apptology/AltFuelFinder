.class public Lcom/biznessapps/common/entities/MapEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "MapEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x6d63c537ee608233L


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private distanceType:Ljava/lang/String;

.field private isCurrentLocoation:Z

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 19
    const-string v0, "km"

    iput-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->distanceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->distanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/common/entities/MapEntity;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentLocoation()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/MapEntity;->isCurrentLocoation:Z

    return v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "address1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->address1:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "address2"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->address2:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->city:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->color:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCurrentLocoation(Z)V
    .locals 0
    .param p1, "isCurrentLocoation"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/MapEntity;->isCurrentLocoation:Z

    .line 112
    return-void
.end method

.method public setDistanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "distanceType"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->distanceType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->latitude:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->longitude:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->state:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->type:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/biznessapps/common/entities/MapEntity;->zip:Ljava/lang/String;

    .line 96
    return-void
.end method

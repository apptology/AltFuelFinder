.class public Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "ReservationBillingAddressItem.java"


# static fields
.field private static final serialVersionUID:J = -0x1060249b32c15ec7L


# instance fields
.field private company:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private fax:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->fax:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->company:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->country:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFax(Ljava/lang/String;)V
    .locals 0
    .param p1, "fax"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->fax:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->firstName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->lastName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/biznessapps/reservation/entities/ReservationBillingAddressItem;->phone:Ljava/lang/String;

    .line 62
    return-void
.end method

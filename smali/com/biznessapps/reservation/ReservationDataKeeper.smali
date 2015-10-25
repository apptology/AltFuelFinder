.class public Lcom/biznessapps/reservation/ReservationDataKeeper;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "ReservationDataKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;,
        Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44c8f0368a984e67L


# instance fields
.field private adminEmail:Ljava/lang/String;

.field private backgroundUrl:Ljava/lang/String;

.field private blockedDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;"
        }
    .end annotation
.end field

.field private brief:Ljava/lang/String;

.field private headerImage:Ljava/lang/String;

.field private isLoggedIn:Z

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private openTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationOpeningTime;",
            ">;"
        }
    .end annotation
.end field

.field private paymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private sessionToken:Ljava/lang/String;

.field private userEmail:Ljava/lang/String;

.field private userFirstName:Ljava/lang/String;

.field private userLastName:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 209
    return-void
.end method


# virtual methods
.method public getAdminEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->adminEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->backgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockedDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->blockedDays:Ljava/util/List;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->brief:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->headerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getOpenTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationOpeningTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->openTimes:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->paymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userPhone:Ljava/lang/String;

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->isLoggedIn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminEmail"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->adminEmail:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->backgroundUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setBlockedDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "blockedDays":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->blockedDays:Ljava/util/List;

    .line 155
    return-void
.end method

.method public setBrief(Ljava/lang/String;)V
    .locals 0
    .param p1, "brief"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->brief:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setHeaderImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerImage"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->headerImage:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->locations:Ljava/util/List;

    .line 64
    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 1
    .param p1, "isLoggedIn"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->isLoggedIn:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->sessionToken:Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method public setOpenTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationOpeningTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "openTimes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationOpeningTime;>;"
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->openTimes:Ljava/util/List;

    .line 139
    return-void
.end method

.method public setPaymentMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;>;"
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->paymentMethods:Ljava/util/List;

    .line 147
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->sessionToken:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "userEmail"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userEmail:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setUserFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userFirstName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userFirstName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUserLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userLastName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userLastName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPhone"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper;->userPhone:Ljava/lang/String;

    .line 115
    return-void
.end method

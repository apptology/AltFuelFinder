.class public Lcom/biznessapps/location/entities/LocationEntity;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "LocationEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x2e204230909ff8cfL


# instance fields
.field private comment:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private foOpeningTime:Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

.field private image1:Ljava/lang/String;

.field private image2:Ljava/lang/String;

.field private isActiveStatus:Z

.field private isAvailable:Z

.field private itemBgUrl:Ljava/lang/String;

.field private openingTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationOpeningTime;",
            ">;"
        }
    .end annotation
.end field

.field private tabId:Ljava/lang/String;

.field private telephone:Ljava/lang/String;

.field private telephoneDisplay:Ljava/lang/String;

.field private timezoneValue:F

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->openingTimes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddressInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "addressInfo":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/biznessapps/location/entities/LocationEntity;->addressTopRow:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/biznessapps/location/entities/LocationEntity;->addressTopRow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/location/entities/LocationEntity;->addressBottomRow:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/location/entities/LocationEntity;->addressBottomRow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 166
    invoke-static {p0}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFoOpeningTime()Lcom/biznessapps/food_ordering/locations/FOOpeningTime;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->foOpeningTime:Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    return-object v0
.end method

.method public getGeneralInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->image1:Ljava/lang/String;

    return-object v0
.end method

.method public getImage2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->image2:Ljava/lang/String;

    return-object v0
.end method

.method public getItemBgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->itemBgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningTimes()Ljava/util/List;
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
    .line 77
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->openingTimes:Ljava/util/List;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephoneDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->telephoneDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezoneValue()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->timezoneValue:F

    return v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isActiveStatus()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->isActiveStatus:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/biznessapps/location/entities/LocationEntity;->isAvailable:Z

    return v0
.end method

.method public setActiveStatus(Z)V
    .locals 0
    .param p1, "isActiveStatus"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->isActiveStatus:Z

    .line 143
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->isAvailable:Z

    .line 151
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->comment:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->email:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setFoOpeningTime(Lcom/biznessapps/food_ordering/locations/FOOpeningTime;)V
    .locals 0
    .param p1, "foOpeningTime"    # Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->foOpeningTime:Lcom/biznessapps/food_ordering/locations/FOOpeningTime;

    .line 135
    return-void
.end method

.method public setImage1(Ljava/lang/String;)V
    .locals 0
    .param p1, "image1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->image1:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setImage2(Ljava/lang/String;)V
    .locals 0
    .param p1, "image2"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->image2:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setItemBgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemBgUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->itemBgUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setOpeningTimes(Ljava/util/List;)V
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
    .line 81
    .local p1, "openingTimes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationOpeningTime;>;"
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->openingTimes:Ljava/util/List;

    .line 82
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->tabId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->telephone:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTelephoneDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephoneDisplay"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->telephoneDisplay:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTimezoneValue(F)V
    .locals 0
    .param p1, "timezoneValue"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->timezoneValue:F

    .line 98
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1, "website"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/location/entities/LocationEntity;->website:Ljava/lang/String;

    .line 66
    return-void
.end method

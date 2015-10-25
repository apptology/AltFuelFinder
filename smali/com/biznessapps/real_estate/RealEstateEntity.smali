.class public Lcom/biznessapps/real_estate/RealEstateEntity;
.super Lcom/biznessapps/common/entities/MapEntity;
.source "RealEstateEntity.java"


# static fields
.field public static final OWN:I = 0x0

.field public static final RENTALS:I = 0x1

.field private static final serialVersionUID:J = -0x23a4d4146d6d5a42L


# instance fields
.field private agent:Ljava/lang/String;

.field private appliances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private architecturalStyle:Ljava/lang/String;

.field private basement:Ljava/lang/String;

.field private baths:Ljava/lang/String;

.field private beds:Ljava/lang/String;

.field private buildingAmenities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private coolingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private exterior:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private floorCovering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gallery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private heatingFuel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private heatingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private houseUnit:Ljava/lang/String;

.field private indoorFeature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isShowAll:Z

.field private lotSize:Ljava/lang/String;

.field private lotUnit:Ljava/lang/String;

.field private outdoorAmenities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private priceUnit:Ljava/lang/String;

.field private rent:I

.field private roof:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sqft:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private view:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yearBuild:I

.field private yearUpdated:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/biznessapps/common/entities/MapEntity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->isShowAll:Z

    return-void
.end method


# virtual methods
.method public getAddressInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "addressInfo":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->addressTopRow:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->addressTopRow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->addressBottomRow:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->addressBottomRow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public getAppliances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->appliances:Ljava/util/List;

    return-object v0
.end method

.method public getArchitecturalStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->architecturalStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getBasement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->basement:Ljava/lang/String;

    return-object v0
.end method

.method public getBaths()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->baths:Ljava/lang/String;

    return-object v0
.end method

.method public getBeds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->beds:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingAmenities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->buildingAmenities:Ljava/util/List;

    return-object v0
.end method

.method public getCoolingTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->coolingTypes:Ljava/util/List;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExterior()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->exterior:Ljava/util/List;

    return-object v0
.end method

.method public getFloorCovering()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->floorCovering:Ljava/util/List;

    return-object v0
.end method

.method public getGallery()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->gallery:Ljava/util/List;

    return-object v0
.end method

.method public getHeatingFuel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->heatingFuel:Ljava/util/List;

    return-object v0
.end method

.method public getHeatingTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->heatingTypes:Ljava/util/List;

    return-object v0
.end method

.method public getHouseUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->houseUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorFeature()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->indoorFeature:Ljava/util/List;

    return-object v0
.end method

.method public getLotSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->lotSize:Ljava/lang/String;

    return-object v0
.end method

.method public getLotUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->lotUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getOutdoorAmenities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->outdoorAmenities:Ljava/util/List;

    return-object v0
.end method

.method public getParking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->parking:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->priceUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getRent()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->rent:I

    return v0
.end method

.method public getRoof()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->roof:Ljava/util/List;

    return-object v0
.end method

.method public getRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->rooms:Ljava/util/List;

    return-object v0
.end method

.method public getSqft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->sqft:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->view:Ljava/util/List;

    return-object v0
.end method

.method public getYearBuild()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->yearBuild:I

    return v0
.end method

.method public getYearUpdated()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->yearUpdated:I

    return v0
.end method

.method public hasAdditionInfo()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->view:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->roof:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->parking:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->outdoorAmenities:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->exterior:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->buildingAmenities:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->rooms:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->indoorFeature:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->heatingFuel:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->heatingTypes:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->floorCovering:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->coolingTypes:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->appliances:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->architecturalStyle:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->basement:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowAll()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->isShowAll:Z

    return v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->agent:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setAppliances(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "appliances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->appliances:Ljava/util/List;

    .line 188
    return-void
.end method

.method public setArchitecturalStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecturalStyle"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->architecturalStyle:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setBasement(Ljava/lang/String;)V
    .locals 0
    .param p1, "basement"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->basement:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setBaths(Ljava/lang/String;)V
    .locals 0
    .param p1, "baths"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->baths:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setBeds(Ljava/lang/String;)V
    .locals 0
    .param p1, "beds"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->beds:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setBuildingAmenities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "buildingAmenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->buildingAmenities:Ljava/util/List;

    .line 236
    return-void
.end method

.method public setCoolingTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "coolingTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->coolingTypes:Ljava/util/List;

    .line 194
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->email:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setExterior(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "exterior":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->exterior:Ljava/util/List;

    .line 242
    return-void
.end method

.method public setFloorCovering(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "floorCovering":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->floorCovering:Ljava/util/List;

    .line 200
    return-void
.end method

.method public setGallery(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "gallery":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->gallery:Ljava/util/List;

    .line 272
    return-void
.end method

.method public setHeatingFuel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "heatingFuel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->heatingFuel:Ljava/util/List;

    .line 212
    return-void
.end method

.method public setHeatingTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "heatingTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->heatingTypes:Ljava/util/List;

    .line 206
    return-void
.end method

.method public setHouseUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "houseUnit"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->houseUnit:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setIndoorFeature(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "indoorFeature":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->indoorFeature:Ljava/util/List;

    .line 224
    return-void
.end method

.method public setLotSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "lotSize"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->lotSize:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setLotUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "lotUnit"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->lotUnit:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setOutdoorAmenities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "outdoorAmenities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->outdoorAmenities:Ljava/util/List;

    .line 248
    return-void
.end method

.method public setParking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "parking":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->parking:Ljava/util/List;

    .line 254
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->phoneNumber:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->price:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPriceUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "priceUnit"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->priceUnit:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setRent(I)V
    .locals 0
    .param p1, "rent"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->rent:I

    .line 151
    return-void
.end method

.method public setRoof(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "roof":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->roof:Ljava/util/List;

    .line 260
    return-void
.end method

.method public setRooms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "rooms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->rooms:Ljava/util/List;

    .line 230
    return-void
.end method

.method public setShowAll(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->isShowAll:Z

    .line 281
    return-void
.end method

.method public setSqft(Ljava/lang/String;)V
    .locals 0
    .param p1, "sqft"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->sqft:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->status:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->style:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "view":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->view:Ljava/util/List;

    .line 266
    return-void
.end method

.method public setYearBuild(I)V
    .locals 0
    .param p1, "yearBuild"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->yearBuild:I

    .line 139
    return-void
.end method

.method public setYearUpdated(I)V
    .locals 0
    .param p1, "yearUpdated"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/biznessapps/real_estate/RealEstateEntity;->yearUpdated:I

    .line 145
    return-void
.end method

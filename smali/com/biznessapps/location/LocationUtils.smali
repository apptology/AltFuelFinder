.class public Lcom/biznessapps/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field public static final DISTANCE_IN_KM:I = 0x1

.field public static final DISTANCE_IN_KM_VALUE:Ljava/lang/String; = "km"

.field public static final DISTANCE_IN_ML_VALUE:Ljava/lang/String; = "mi"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress(ZLcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;
    .locals 3
    .param p0, "useNewInfo"    # Z
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "addressInfo":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressTopRow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressTopRow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressBottomRow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 198
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressBottomRow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 205
    invoke-static {p1}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;)F
    .locals 6
    .param p0, "latitude"    # Ljava/lang/String;
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "distance":F
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 98
    .local v0, "currentLocation":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 99
    new-instance v3, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 102
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    invoke-virtual {v0, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 109
    .end local v0    # "currentLocation":Landroid/location/Location;
    .end local v3    # "locItem":Landroid/location/Location;
    :cond_0
    return v1

    .line 103
    .restart local v0    # "currentLocation":Landroid/location/Location;
    .restart local v3    # "locItem":Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 5
    .param p0, "latitude1"    # Ljava/lang/String;
    .param p1, "longitude1"    # Ljava/lang/String;
    .param p2, "latitude2"    # Ljava/lang/String;
    .param p3, "longitude2"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v1, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 116
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    new-instance v2, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "locItem2":Landroid/location/Location;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 123
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_1
    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    return v3

    .line 117
    .end local v2    # "locItem2":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "locItem2":Landroid/location/Location;
    :catch_1
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDistanceValue(FLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "distance"    # F
    .param p1, "distanceType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "locFormat":Ljava/lang/String;
    const-string v1, "km"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Kilometer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    .line 136
    const-string p1, "km"

    .line 137
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v1

    const-string v2, "%.2fkm"

    invoke-virtual {v1, p2, v2}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    if-eqz v0, :cond_2

    .line 145
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_1
    return-object v1

    .line 140
    :cond_1
    const v1, 0x44c92ae1

    div-float/2addr p0, v1

    .line 141
    const-string p1, "mi"

    .line 142
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v1

    const-string v2, "%.1fmi"

    invoke-virtual {v1, p2, v2}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "%.2f%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getDistanceValueInMeters(FLjava/lang/String;)F
    .locals 1
    .param p0, "distance"    # F
    .param p1, "distanceType"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "km"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Kilometer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    .line 160
    :goto_0
    return p0

    .line 158
    :cond_1
    const v0, 0x44c92ae1

    mul-float/2addr p0, v0

    goto :goto_0
.end method

.method public static getEventDetailAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;
    .locals 4
    .param p0, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v1, "addressInfo":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressTopRow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressTopRow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressBottomRow()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressBottomRow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 222
    const-string v2, "\n"

    invoke-static {p0, v2}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v0    # "address":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;
    .locals 1
    .param p0, "location"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "location"    # Lcom/biznessapps/location/entities/LocationEntity;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getAddress1()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "address1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getAddress2()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "address2":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getCity()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "city":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getState()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "state":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/location/entities/LocationEntity;->getZip()Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "zip":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "address":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 47
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_3
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 56
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_5
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 62
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_7
    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 68
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 9
    .param p0, "topAddressView"    # Landroid/widget/TextView;
    .param p1, "bottomAddressView"    # Landroid/widget/TextView;
    .param p2, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 164
    invoke-virtual {p2}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressTopRow()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "topAddress":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressBottomRow()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "bottomAddress":Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    .line 167
    .local v4, "hasTopAddress":Z
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    .line 168
    .local v3, "hasBottomAddress":Z
    if-nez v4, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 170
    .local v2, "hasAddressLine":Z
    :goto_0
    if-eqz v2, :cond_6

    .line 171
    if-eqz v4, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 175
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    :goto_3
    return-void

    .end local v2    # "hasAddressLine":Z
    :cond_3
    move v2, v7

    .line 168
    goto :goto_0

    .restart local v2    # "hasAddressLine":Z
    :cond_4
    move v6, v8

    .line 171
    goto :goto_1

    :cond_5
    move v7, v8

    .line 172
    goto :goto_2

    .line 181
    :cond_6
    invoke-static {p2}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/location/LocationUtils;->getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 78
    .local v0, "distance":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 79
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getDistanceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/biznessapps/location/LocationUtils;->getDistanceValue(FLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0    # "distance":F
    :goto_0
    return-void

    .line 81
    .restart local v0    # "distance":F
    :cond_0
    sget v1, Lcom/biznessapps/layout/R$string;->n_a:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    .end local v0    # "distance":F
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$string;->n_a:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

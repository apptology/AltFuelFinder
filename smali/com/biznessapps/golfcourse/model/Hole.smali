.class public Lcom/biznessapps/golfcourse/model/Hole;
.super Ljava/lang/Object;
.source "Hole.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final JSON_GPS_FORMAT:Ljava/lang/String; = "(%.9s, %.9s)"

.field private static final serialVersionUID:J = 0x304675c37194311cL


# instance fields
.field public transient back:Lcom/google/android/gms/maps/model/LatLng;

.field public description:Ljava/lang/String;

.field public transient front:Lcom/google/android/gms/maps/model/LatLng;

.field public handicap:I

.field public holeNumber:I

.field public id:J

.field public mapThumbnailUrl:Ljava/lang/String;

.field public transient middle:Lcom/google/android/gms/maps/model/LatLng;

.field public par:I

.field public tee1:I

.field public tee2:I

.field public tee3:I

.field public tee4:I

.field public unitType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "unitType"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    .line 50
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    .line 51
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    .line 60
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/biznessapps/golfcourse/model/Hole;->parseJson(Lorg/json/JSONObject;)V

    .line 63
    iput p2, p0, Lcom/biznessapps/golfcourse/model/Hole;->unitType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;I)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "unitType"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    .line 50
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    .line 51
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    .line 70
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/model/Hole;->parseJson(Lorg/json/JSONObject;)V

    .line 72
    iput p2, p0, Lcom/biznessapps/golfcourse/model/Hole;->unitType:I

    .line 73
    return-void
.end method

.method public static getMeter(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 4
    .param p0, "currentLocation"    # Landroid/location/Location;
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 213
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 221
    :goto_0
    return v1

    .line 215
    :cond_1
    new-instance v0, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "location":Landroid/location/Location;
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 217
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 219
    invoke-virtual {v0, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 221
    .local v1, "meters":F
    goto :goto_0
.end method

.method public static getYard(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 2
    .param p0, "currentLocation"    # Landroid/location/Location;
    .param p1, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 197
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 202
    :goto_0
    return v1

    .line 199
    :cond_1
    invoke-static {p0, p1}, Lcom/biznessapps/golfcourse/model/Hole;->getMeter(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 200
    .local v0, "meters":F
    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->getYardsFromMeters(F)F

    move-result v1

    .line 202
    .local v1, "yards":F
    goto :goto_0
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 85
    :try_start_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->id:J

    .line 86
    const-string v1, "hnumber"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    .line 87
    const-string v1, "par"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    .line 88
    const-string v1, "handicap"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    .line 89
    const-string v1, "description"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->description:Ljava/lang/String;

    .line 90
    const-string v1, "tee1"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee1:I

    .line 91
    const-string v1, "tee2"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee2:I

    .line 92
    const-string v1, "tee3"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee3:I

    .line 93
    const-string v1, "tee4"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee4:I

    .line 94
    const-string v1, "front"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/biznessapps/golfcourse/model/Hole;->parseLocation(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    .line 95
    const-string v1, "middle"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/biznessapps/golfcourse/model/Hole;->parseLocation(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    .line 96
    const-string v1, "back"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/biznessapps/golfcourse/model/Hole;->parseLocation(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    .line 97
    const-string v1, "map"

    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private parseLocation(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 11
    .param p1, "locationStr"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    if-nez p1, :cond_0

    .line 107
    const/4 v7, 0x0

    .line 122
    :goto_0
    return-object v7

    .line 110
    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v6, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "token":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 114
    .local v1, "latitude":F
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 115
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 117
    .local v4, "longitude":F
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v7, v1

    float-to-double v9, v4

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    .local v3, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    move-object v2, v3

    .end local v1    # "latitude":F
    .end local v3    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "longitude":F
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    :goto_1
    move-object v7, v2

    .line 122
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 239
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    .line 240
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    .line 241
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    .line 242
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 228
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 229
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 230
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 231
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 232
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 233
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 234
    return-void
.end method


# virtual methods
.method public buildJson()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 127
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "id"

    iget-wide v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->id:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 129
    const-string v2, "hnumber"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v2, "par"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v2, "handicap"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v2, "description"

    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "tee1"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee1:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v2, "tee2"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee2:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v2, "tee3"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee3:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v2, "tee4"

    iget v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->tee4:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    const-string v2, "front"

    const-string v3, "(%.9s, %.9s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/Hole;->front:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v2, "middle"

    const-string v3, "(%.9s, %.9s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "back"

    const-string v3, "(%.9s, %.9s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/Hole;->back:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "map"

    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Hole;->mapThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDistance(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 2
    .param p1, "currentLocation"    # Landroid/location/Location;
    .param p2, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 153
    iget v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->unitType:I

    packed-switch v1, :pswitch_data_0

    .line 159
    invoke-static {p1, p2}, Lcom/biznessapps/golfcourse/model/Hole;->getYard(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 163
    .local v0, "distance":F
    :goto_0
    return v0

    .line 155
    .end local v0    # "distance":F
    :pswitch_0
    invoke-static {p1, p2}, Lcom/biznessapps/golfcourse/model/Hole;->getMeter(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 156
    .restart local v0    # "distance":F
    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDistanceAsString(Landroid/content/Context;Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentLocation"    # Landroid/location/Location;
    .param p3, "latlng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 167
    invoke-virtual {p0, p2, p3}, Lcom/biznessapps/golfcourse/model/Hole;->getDistance(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 169
    .local v0, "distance":F
    const/4 v1, 0x0

    .line 170
    .local v1, "distanceStr":Ljava/lang/String;
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 171
    sget v2, Lcom/biznessapps/layout/R$string;->n_a:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    :goto_0
    iget v2, p0, Lcom/biznessapps/golfcourse/model/Hole;->unitType:I

    packed-switch v2, :pswitch_data_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->yards:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_1
    return-object v1

    .line 173
    :cond_0
    float-to-int v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->meters:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    goto :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getHoleName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/biznessapps/layout/R$string;->hole:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "holeName":Ljava/lang/String;
    return-object v0
.end method

.method public getMeter(Landroid/location/Location;)F
    .locals 2
    .param p1, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1, v1}, Lcom/biznessapps/golfcourse/model/Hole;->getMeter(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 208
    .local v0, "yards":F
    return v0
.end method

.method public getYards(Landroid/location/Location;)F
    .locals 2
    .param p1, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/biznessapps/golfcourse/model/Hole;->middle:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1, v1}, Lcom/biznessapps/golfcourse/model/Hole;->getYard(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    .line 192
    .local v0, "yards":F
    return v0
.end method

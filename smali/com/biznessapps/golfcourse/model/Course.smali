.class public Lcom/biznessapps/golfcourse/model/Course;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "Course.java"


# static fields
.field public static final COURSE_UNIT_METER:I = 0x1

.field public static final COURSE_UNIT_YARD:I = 0x0

.field public static final LATEST_IN_HOLE_NO:I = 0x12

.field public static final LATEST_OUT_HOLE_NO:I = 0x9

.field public static final RETURNABLE_TOTAL_HOLE_COUHNT:I = 0x12

.field private static final serialVersionUID:J = -0x55a4c7e797d90eb8L


# instance fields
.field public bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field public courseId:J

.field public description:Ljava/lang/String;

.field private holeList:Lcom/biznessapps/common/SerializableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/common/SerializableSparseArray",
            "<",
            "Lcom/biznessapps/golfcourse/model/Hole;",
            ">;"
        }
    .end annotation
.end field

.field public isRemoved:Z

.field private mUnitType:I

.field public name:Ljava/lang/String;

.field public remoteCourseId:J

.field public thumbUrl:Ljava/lang/String;

.field public useOverlay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z

    .line 62
    new-instance v0, Lcom/biznessapps/common/SerializableSparseArray;

    invoke-direct {v0}, Lcom/biznessapps/common/SerializableSparseArray;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    return-void
.end method


# virtual methods
.method public getHole(I)Lcom/biznessapps/golfcourse/model/Hole;
    .locals 1
    .param p1, "holeNumber"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    return-object v0
.end method

.method public getHoleList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/biznessapps/golfcourse/model/Hole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    return-object v0
.end method

.method public getJsonHoleList()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v5, :cond_0

    .line 98
    const-string v3, ""

    .line 112
    :goto_0
    return-object v3

    .line 100
    :cond_0
    const-string v3, ""

    .line 101
    .local v3, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 102
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v5}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 103
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v5, v1}, Lcom/biznessapps/common/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 104
    .local v0, "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Hole;->buildJson()Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    goto :goto_0
.end method

.method public getTotalHandicap()I
    .locals 4

    .prologue
    .line 194
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_1

    .line 195
    const/4 v2, 0x0

    .line 203
    :cond_0
    return v2

    .line 197
    :cond_1
    const/4 v2, 0x0

    .line 198
    .local v2, "totalHandicap":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 200
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    add-int/2addr v2, v3

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTotalInHandicap()I
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    const/4 v2, -0x1

    .line 190
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_2

    .line 182
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    :cond_2
    const/4 v2, 0x0

    .line 185
    .local v2, "totalHandicap":I
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 187
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    add-int/2addr v2, v3

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTotalInPars()I
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const/4 v2, -0x1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_2

    .line 136
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_2
    const/4 v2, 0x0

    .line 139
    .local v2, "totalPars":I
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 141
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    add-int/2addr v2, v3

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTotalMeters(Landroid/location/Location;)I
    .locals 5
    .param p1, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 237
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_1

    .line 238
    const/4 v2, 0x0

    .line 246
    :cond_0
    return v2

    .line 240
    :cond_1
    const/4 v2, 0x0

    .line 241
    .local v2, "totalYards":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 243
    .local v0, "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    int-to-float v3, v2

    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/model/Hole;->getMeter(Landroid/location/Location;)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTotalOutHandicap()I
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    const/4 v2, -0x1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_2

    .line 166
    const/4 v2, 0x0

    goto :goto_0

    .line 168
    :cond_2
    const/4 v2, 0x0

    .line 169
    .local v2, "totalHandicap":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 171
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    add-int/2addr v2, v3

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTotalOutPars()I
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const/4 v2, -0x1

    .line 128
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_2

    .line 120
    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :cond_2
    const/4 v2, 0x0

    .line 123
    .local v2, "totalPars":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 125
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    add-int/2addr v2, v3

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTotalPars()I
    .locals 4

    .prologue
    .line 148
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_1

    .line 149
    const/4 v2, 0x0

    .line 158
    :cond_0
    return v2

    .line 151
    :cond_1
    const/4 v2, 0x0

    .line 153
    .local v2, "totalPars":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 155
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    add-int/2addr v2, v3

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTotalTees()I
    .locals 4

    .prologue
    .line 250
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_1

    .line 251
    const/4 v2, 0x0

    .line 259
    :cond_0
    return v2

    .line 253
    :cond_1
    const/4 v2, 0x0

    .line 254
    .local v2, "totalTees":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 256
    .local v0, "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    iget v3, v0, Lcom/biznessapps/golfcourse/model/Hole;->tee1:I

    add-int/2addr v2, v3

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTotalYards(Landroid/location/Location;)I
    .locals 5
    .param p1, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v3, :cond_1

    .line 225
    const/4 v2, 0x0

    .line 233
    :cond_0
    return v2

    .line 227
    :cond_1
    const/4 v2, 0x0

    .line 228
    .local v2, "totalYards":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v3, v1}, Lcom/biznessapps/common/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Hole;

    .line 230
    .local v0, "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    int-to-float v3, v2

    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/model/Hole;->getYards(Landroid/location/Location;)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getUnitType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/biznessapps/golfcourse/model/Course;->mUnitType:I

    return v0
.end method

.method public isGoBackableCourse()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    invoke-virtual {v0}, Lcom/biznessapps/common/SerializableSparseArray;->size()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/biznessapps/golfcourse/model/Course;->remoteCourseId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHoleList(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    if-nez v5, :cond_0

    .line 68
    new-instance v5, Lcom/biznessapps/common/SerializableSparseArray;

    invoke-direct {v5}, Lcom/biznessapps/common/SerializableSparseArray;-><init>()V

    iput-object v5, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    .line 70
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 71
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 72
    .local v4, "object":Lorg/json/JSONObject;
    new-instance v1, Lcom/biznessapps/golfcourse/model/Hole;

    iget v5, p0, Lcom/biznessapps/golfcourse/model/Course;->mUnitType:I

    invoke-direct {v1, v4, v5}, Lcom/biznessapps/golfcourse/model/Hole;-><init>(Lorg/json/JSONObject;I)V

    .line 73
    .local v1, "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Course;->holeList:Lcom/biznessapps/common/SerializableSparseArray;

    iget v6, v1, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-virtual {v5, v6, v1}, Lcom/biznessapps/common/SerializableSparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "holeItem":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public setUnit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unit"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 207
    iput v1, p0, Lcom/biznessapps/golfcourse/model/Course;->mUnitType:I

    .line 208
    if-eqz p2, :cond_0

    const-string v0, "yards"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/golfcourse/model/Course;->mUnitType:I

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    const-string v0, "meters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iput v1, p0, Lcom/biznessapps/golfcourse/model/Course;->mUnitType:I

    goto :goto_0
.end method

.method public setUnitType(I)V
    .locals 0
    .param p1, "unitType"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/biznessapps/golfcourse/model/Course;->mUnitType:I

    .line 217
    return-void
.end method

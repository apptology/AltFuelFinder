.class public Lcom/biznessapps/pushnotifications/GeoFencingHelper;
.super Ljava/lang/Object;
.source "GeoFencingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static isContainCoordinate([Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;)Z
    .locals 7
    .param p0, "paths"    # [Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .param p1, "point"    # Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    .prologue
    const/4 v5, 0x1

    .line 56
    const/4 v2, 0x0

    .line 60
    .local v2, "crossings":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_2

    .line 61
    aget-object v0, p0, v3

    .line 62
    .local v0, "a":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    add-int/lit8 v4, v3, 0x1

    .line 63
    .local v4, "j":I
    array-length v6, p0

    if-lt v4, v6, :cond_0

    .line 64
    const/4 v4, 0x0

    .line 67
    :cond_0
    aget-object v1, p0, v4

    .line 68
    .local v1, "b":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    invoke-static {p1, v0, v1}, Lcom/biznessapps/pushnotifications/GeoFencingHelper;->rayCrossesSegment(Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 60
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "a":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .end local v1    # "b":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .end local v4    # "j":I
    :cond_2
    rem-int/lit8 v6, v2, 0x2

    if-ne v6, v5, :cond_3

    :goto_1
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static rayCrossesSegment(Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;)Z
    .locals 21
    .param p0, "point"    # Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .param p1, "a"    # Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .param p2, "b"    # Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->x:D

    .line 78
    .local v13, "px":D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->y:D

    .line 80
    .local v15, "py":D
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->x:D

    .line 81
    .local v5, "ax":D
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->y:D

    .line 82
    .local v7, "ay":D
    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->x:D

    .line 83
    .local v9, "bx":D
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->y:D

    .line 85
    .local v11, "by":D
    cmpl-double v17, v7, v11

    if-lez v17, :cond_0

    .line 86
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->x:D

    .line 87
    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->y:D

    .line 88
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->x:D

    .line 89
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->y:D

    .line 92
    :cond_0
    cmpl-double v17, v15, v7

    if-eqz v17, :cond_1

    cmpl-double v17, v15, v11

    if-nez v17, :cond_2

    :cond_1
    const-wide v17, 0x3e45798ee2308c3aL    # 1.0E-8

    add-double v15, v15, v17

    .line 93
    :cond_2
    cmpl-double v17, v15, v11

    if-gtz v17, :cond_3

    cmpg-double v17, v15, v7

    if-ltz v17, :cond_3

    cmpl-double v17, v5, v9

    if-lez v17, :cond_4

    move-wide/from16 v17, v5

    :goto_0
    cmpl-double v17, v13, v17

    if-lez v17, :cond_5

    :cond_3
    const/16 v17, 0x0

    .line 98
    :goto_1
    return v17

    :cond_4
    move-wide/from16 v17, v9

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    cmpg-double v17, v5, v9

    if-gez v17, :cond_6

    move-wide/from16 v17, v5

    :goto_2
    cmpg-double v17, v13, v17

    if-gez v17, :cond_7

    const/16 v17, 0x1

    goto :goto_1

    :cond_6
    move-wide/from16 v17, v9

    goto :goto_2

    .line 96
    :cond_7
    cmpl-double v17, v5, v9

    if-eqz v17, :cond_8

    sub-double v17, v11, v7

    sub-double v19, v9, v5

    div-double v3, v17, v19

    .line 97
    .local v3, "$red":D
    :goto_3
    cmpl-double v17, v5, v13

    if-eqz v17, :cond_9

    sub-double v17, v15, v7

    sub-double v19, v13, v5

    div-double v1, v17, v19

    .line 98
    .local v1, "$blue":D
    :goto_4
    cmpl-double v17, v1, v3

    if-ltz v17, :cond_a

    const/16 v17, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "$blue":D
    .end local v3    # "$red":D
    :cond_8
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_3

    .line 97
    .restart local v3    # "$red":D
    :cond_9
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_4

    .line 98
    .restart local v1    # "$blue":D
    :cond_a
    const/16 v17, 0x0

    goto :goto_1
.end method

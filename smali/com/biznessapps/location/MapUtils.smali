.class public Lcom/biznessapps/location/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field public static final CAR_FINDER_RADIUS:I = 0x2bc

.field public static final CAR_FINDER_ZOOM_LEVEL:I = 0xe

.field private static final FAN_WALL_BORDER_ICON_HEIGHT:I = 0x5f

.field private static final FAN_WALL_BORDER_ICON_WIDTH:I = 0x55

.field private static final FAN_WALL_ICON_LEFT_OFFSET:I = 0x8

.field private static final FAN_WALL_ICON_TOP_OFFSET:I = 0xa

.field private static final FAN_WALL_ICON_WIDTH:I = 0x46

.field private static final OFFSET_PIXELS:I = 0x32

.field public static final SINGLE_ZOOM_LEVEL:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComboBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "markerBorderBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "markerBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v9, 0x5f

    const/16 v8, 0x55

    const/16 v7, 0x46

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 137
    invoke-static {p1, v7, v7, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 139
    .local v4, "scaledMarkerBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v8, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    .local v3, "scaledBorderBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 143
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 144
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    .local v1, "cs":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v0, "comboImage":Landroid/graphics/Canvas;
    invoke-virtual {v0, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    return-object v1
.end method

.method public static customizeMarkerBitmap(ILandroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 29
    .param p0, "bitmapResId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newColor"    # I

    .prologue
    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 100
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/biznessapps/layout/R$dimen;->map_pin_size:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 101
    .local v13, "flagWidth":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v12, v0

    .line 102
    .local v12, "flagHeight":F
    float-to-int v0, v13

    move/from16 v26, v0

    float-to-int v0, v12

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 104
    .local v19, "newBmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v21

    .line 105
    .local v21, "oldColor":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v24

    .line 106
    .local v24, "r1":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 107
    .local v15, "g1":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 108
    .local v6, "b1":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 109
    .local v25, "r2":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v16

    .line 110
    .local v16, "g2":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 111
    .local v7, "b2":I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v11, v26, v27

    .line 112
    .local v11, "dr":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    div-float v10, v26, v27

    .line 113
    .local v10, "dg":F
    int-to-float v0, v7

    move/from16 v26, v0

    int-to-float v0, v6

    move/from16 v27, v0

    div-float v9, v26, v27

    .line 115
    .local v9, "db":F
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 116
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 117
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    .line 118
    .local v22, "pixel":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->red(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v11

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 119
    .local v23, "r":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v10

    move/from16 v0, v26

    float-to-int v14, v0

    .line 120
    .local v14, "g":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v9

    move/from16 v0, v26

    float-to-int v5, v0

    .line 121
    .local v5, "b":I
    const/16 v26, 0xff

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 122
    const/16 v23, 0xff

    .line 123
    :cond_0
    const/16 v26, 0xff

    move/from16 v0, v26

    if-le v14, v0, :cond_1

    .line 124
    const/16 v14, 0xff

    .line 125
    :cond_1
    const/16 v26, 0xff

    move/from16 v0, v26

    if-le v5, v0, :cond_2

    .line 126
    const/16 v5, 0xff

    .line 127
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 128
    .local v4, "a":I
    move/from16 v0, v23

    invoke-static {v4, v0, v14, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 129
    .local v20, "newPixel":I
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 116
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 115
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v14    # "g":I
    .end local v20    # "newPixel":I
    .end local v22    # "pixel":I
    .end local v23    # "r":I
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 132
    .end local v18    # "j":I
    :cond_4
    return-object v19
.end method

.method public static defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;)V
    .locals 2
    .param p0, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "markers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/maps/model/Marker;>;"
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/biznessapps/location/MapUtils;->defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;IZ)V

    .line 96
    return-void
.end method

.method public static defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;IZ)V
    .locals 8
    .param p0, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "singleZoomLevel"    # I
    .param p3, "useConstantZoom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "markers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/maps/model/Marker;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    if-eqz p3, :cond_1

    .line 67
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Marker;

    .line 68
    .local v5, "singlePin":Lcom/google/android/gms/maps/model/Marker;
    new-instance v6, Lcom/biznessapps/location/MapUtils$1;

    invoke-direct {v6, p0, v5, p2}, Lcom/biznessapps/location/MapUtils$1;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/Marker;I)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    .line 92
    .end local v5    # "singlePin":Lcom/google/android/gms/maps/model/Marker;
    :goto_0
    return-void

    .line 76
    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 77
    .local v1, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/Marker;

    .line 78
    .local v3, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_1

    .line 80
    .end local v3    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 81
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/16 v4, 0x32

    .line 82
    .local v4, "padding":I
    new-instance v6, Lcom/biznessapps/location/MapUtils$2;

    invoke-direct {v6, v0, p0}, Lcom/biznessapps/location/MapUtils$2;-><init>(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    goto :goto_0
.end method

.method public static getColoredMapPin(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "mapWidthId"    # I
    .param p3, "newColor"    # I

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 156
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v13, v0

    .line 157
    .local v13, "flagWidth":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v13

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v12, v0

    .line 158
    .local v12, "flagHeight":F
    float-to-int v0, v13

    move/from16 v26, v0

    float-to-int v0, v12

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 159
    .local v19, "newBmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v21

    .line 160
    .local v21, "oldColor":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v24

    .line 161
    .local v24, "r1":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 162
    .local v15, "g1":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 163
    .local v6, "b1":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 164
    .local v25, "r2":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v16

    .line 165
    .local v16, "g2":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 166
    .local v7, "b2":I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v11, v26, v27

    .line 167
    .local v11, "dr":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    div-float v10, v26, v27

    .line 168
    .local v10, "dg":F
    int-to-float v0, v7

    move/from16 v26, v0

    int-to-float v0, v6

    move/from16 v27, v0

    div-float v9, v26, v27

    .line 170
    .local v9, "db":F
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 171
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 172
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    .line 173
    .local v22, "pixel":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->red(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v11

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 174
    .local v23, "r":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v10

    move/from16 v0, v26

    float-to-int v14, v0

    .line 175
    .local v14, "g":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v9

    move/from16 v0, v26

    float-to-int v5, v0

    .line 176
    .local v5, "b":I
    const/16 v26, 0xff

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 177
    const/16 v23, 0xff

    .line 178
    :cond_0
    const/16 v26, 0xff

    move/from16 v0, v26

    if-le v14, v0, :cond_1

    .line 179
    const/16 v14, 0xff

    .line 180
    :cond_1
    const/16 v26, 0xff

    move/from16 v0, v26

    if-le v5, v0, :cond_2

    .line 181
    const/16 v5, 0xff

    .line 182
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 183
    .local v4, "a":I
    move/from16 v0, v23

    invoke-static {v4, v0, v14, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 184
    .local v20, "newPixel":I
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 171
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 170
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v14    # "g":I
    .end local v20    # "newPixel":I
    .end local v22    # "pixel":I
    .end local v23    # "r":I
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 187
    .end local v18    # "j":I
    :cond_4
    new-instance v26, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v26
.end method

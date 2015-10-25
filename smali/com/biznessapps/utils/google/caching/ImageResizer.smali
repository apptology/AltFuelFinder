.class public Lcom/biznessapps/utils/google/caching/ImageResizer;
.super Lcom/biznessapps/utils/google/caching/ImageWorker;
.source "ImageResizer.java"


# static fields
.field public static final APP_IMAGE_TYPE:I = 0x2

.field public static final GALLERY_THUMBNAIL_TYPE:I = 0x4

.field public static final IMAGE_CIRCLE_TYPE:I = 0x1

.field public static final IMAGE_FILE_TYPE:I = 0x4

.field public static final IMAGE_ORDINARY_TYPE:I = 0x0

.field public static final IMAGE_ROUNDED_TYPE:I = 0x2

.field public static final IMAGE_YOUTUBE_TYPE:I = 0x3

.field public static final LIST_ICON_TYPE:I = 0x1

.field private static final MIN_SIZE:I = 0xc8

.field public static final PREVIEW_IMAGE_TYPE:I = 0x3

.field private static final ROUND_PERCENT:F = 0.1f


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/biznessapps/utils/google/caching/ImageResizer;->setImageSize(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/biznessapps/utils/google/caching/ImageWorker;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageResizer;->setImageSize(II)V

    .line 79
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 257
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 258
    .local v0, "height":I
    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 259
    .local v5, "width":I
    const/4 v2, 0x1

    .line 261
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v5, p1, :cond_2

    .line 264
    :cond_0
    int-to-float v7, v0

    int-to-float v8, p2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 265
    .local v1, "heightRatio":I
    int-to-float v7, v5

    int-to-float v8, p1

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 269
    .local v6, "widthRatio":I
    if-ge v1, v6, :cond_1

    move v2, v1

    .line 277
    :goto_0
    mul-int v7, v5, v0

    int-to-float v3, v7

    .line 280
    .local v3, "totalPixels":F
    mul-int v7, p1, p2

    mul-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    .line 282
    .local v4, "totalReqPixelsCap":F
    :goto_1
    mul-int v7, v2, v2

    int-to-float v7, v7

    div-float v7, v3, v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "totalPixels":F
    .end local v4    # "totalReqPixelsCap":F
    :cond_1
    move v2, v6

    .line 269
    goto :goto_0

    .line 286
    .end local v1    # "heightRatio":I
    .end local v6    # "widthRatio":I
    :cond_2
    return v2
.end method

.method private static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 230
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 233
    invoke-static {v0, p1, p2}, Lcom/biznessapps/utils/google/caching/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 237
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 203
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 204
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 208
    invoke-static {v0, p1, p2}, Lcom/biznessapps/utils/google/caching/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 212
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIII)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "imageFormType"    # I

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 162
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 165
    invoke-static {v0, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageResizer;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 168
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 172
    .local v2, "srcBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 173
    .local v1, "result":Landroid/graphics/Bitmap;
    packed-switch p4, :pswitch_data_0

    .line 185
    move-object v1, v2

    .line 187
    :goto_0
    return-object v1

    .line 175
    :pswitch_0
    invoke-static {v2, v0, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageResizer;->getLargedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    invoke-static {v2}, Lcom/biznessapps/utils/google/caching/ImageResizer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-static {v2, v0, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageResizer;->getLargedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 181
    invoke-static {v2}, Lcom/biznessapps/utils/google/caching/ImageResizer;->getCircledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCircledBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    :goto_0
    move/from16 v0, v17

    int-to-float v11, v0

    .line 358
    .local v11, "minSide":F
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-nez v17, :cond_2

    .line 359
    const/4 v12, 0x0

    .line 396
    :cond_0
    :goto_1
    return-object v12

    .line 356
    .end local v11    # "minSide":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    goto :goto_0

    .line 362
    .restart local v11    # "minSide":F
    :cond_2
    const/4 v15, 0x0

    .line 363
    .local v15, "scalledBitmap":Landroid/graphics/Bitmap;
    const/high16 v17, 0x43480000    # 200.0f

    cmpg-float v17, v11, v17

    if-gez v17, :cond_3

    .line 364
    const/high16 v17, 0x43480000    # 200.0f

    div-float v9, v17, v11

    .line 365
    .local v9, "fx":F
    float-to-int v10, v9

    .line 366
    .local v10, "ix":I
    add-int/lit8 v14, v10, 0x1

    .line 367
    .local v14, "scale":I
    int-to-float v0, v14

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    mul-int v17, v17, v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v18, v18, v14

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 373
    .end local v9    # "fx":F
    .end local v10    # "ix":I
    .end local v14    # "scale":I
    :goto_2
    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v11

    move/from16 v18, v0

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 374
    .local v12, "output":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 376
    .local v4, "canvas":Landroid/graphics/Canvas;
    const v5, -0xbdbdbe

    .line 377
    .local v5, "color":I
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local v13, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    const v17, -0xbdbdbe

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 382
    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v11, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v11, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v11, v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 384
    new-instance v6, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    float-to-int v0, v11

    move/from16 v19, v0

    float-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 386
    .local v6, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v7, v17, v18

    .line 387
    .local v7, "dx":F
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v11

    const/high16 v18, 0x40000000    # 2.0f

    div-float v8, v17, v18

    .line 388
    .local v8, "dy":F
    new-instance v16, Landroid/graphics/Rect;

    float-to-int v0, v7

    move/from16 v17, v0

    float-to-int v0, v8

    move/from16 v18, v0

    add-float v19, v7, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-float v20, v8, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 390
    .local v16, "srcRect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 391
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0, v6, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 393
    move-object/from16 v0, p0

    if-eq v15, v0, :cond_0

    .line 394
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 370
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "color":I
    .end local v6    # "dstRect":Landroid/graphics/Rect;
    .end local v7    # "dx":F
    .end local v8    # "dy":F
    .end local v12    # "output":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v16    # "srcRect":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v15, p0

    goto/16 :goto_2
.end method

.method public static getCropped280Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 401
    .local v7, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 402
    .local v5, "srcHeight":I
    mul-int/lit8 v8, v5, 0x2d

    div-int/lit16 v2, v8, 0x168

    .line 403
    .local v2, "fieldHeight":I
    mul-int/lit8 v8, v2, 0x2

    sub-int v8, v5, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 404
    .local v3, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 406
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 408
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    mul-int/lit8 v8, v2, 0x2

    sub-int v8, v5, v8

    invoke-direct {v1, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 409
    .local v1, "dstRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v8, v2, 0x0

    sub-int v9, v5, v2

    invoke-direct {v6, v10, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 410
    .local v6, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p0, v6, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 412
    return-object v3
.end method

.method public static getLargedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 290
    if-nez p0, :cond_0

    .line 291
    const/4 p0, 0x0

    .line 308
    .end local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 293
    .restart local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "x":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 294
    .local v3, "y":F
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le p2, v4, :cond_1

    .line 295
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v4, p2, v4

    int-to-float v2, v4

    .line 297
    :cond_1
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le p3, v4, :cond_2

    .line 298
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v4, p3, v4

    int-to-float v3, v4

    .line 300
    :cond_2
    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    move v1, v2

    .line 302
    .local v1, "scale":F
    :goto_1
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 304
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_3
    move-object p0, v0

    .line 308
    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "scale":F
    :cond_4
    move v1, v3

    .line 300
    goto :goto_1
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    :goto_0
    move/from16 v0, v19

    int-to-float v12, v0

    .line 314
    .local v12, "minSide":F
    const/16 v19, 0x0

    cmpl-float v19, v12, v19

    if-nez v19, :cond_2

    .line 315
    const/4 v13, 0x0

    .line 352
    :cond_0
    :goto_1
    return-object v13

    .line 312
    .end local v12    # "minSide":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    goto :goto_0

    .line 318
    .restart local v12    # "minSide":F
    :cond_2
    const/16 v17, 0x0

    .line 319
    .local v17, "scalledBitmap":Landroid/graphics/Bitmap;
    const/high16 v19, 0x43480000    # 200.0f

    cmpg-float v19, v12, v19

    if-gez v19, :cond_3

    .line 320
    const/high16 v19, 0x43480000    # 200.0f

    div-float v10, v19, v12

    .line 321
    .local v10, "fx":F
    float-to-int v11, v10

    .line 322
    .local v11, "ix":I
    add-int/lit8 v16, v11, 0x1

    .line 323
    .local v16, "scale":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v12, v12, v19

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int v19, v19, v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    mul-int v20, v20, v16

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 329
    .end local v10    # "fx":F
    .end local v11    # "ix":I
    .end local v16    # "scale":I
    :goto_2
    float-to-int v0, v12

    move/from16 v19, v0

    float-to-int v0, v12

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 330
    .local v13, "output":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    .local v4, "canvas":Landroid/graphics/Canvas;
    const v5, -0xbdbdbe

    .line 333
    .local v5, "color":I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 334
    .local v14, "paint":Landroid/graphics/Paint;
    const v19, 0x3dcccccd    # 0.1f

    mul-float v15, v12, v19

    .line 335
    .local v15, "roundPx":F
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 336
    const v19, -0xbdbdbe

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    new-instance v6, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    float-to-int v0, v12

    move/from16 v21, v0

    float-to-int v0, v12

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    .local v6, "dstRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 339
    .local v7, "dstRectF":Landroid/graphics/RectF;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 340
    invoke-virtual {v4, v7, v15, v15, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 342
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v12

    const/high16 v20, 0x40000000    # 2.0f

    div-float v8, v19, v20

    .line 343
    .local v8, "dx":F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v12

    const/high16 v20, 0x40000000    # 2.0f

    div-float v9, v19, v20

    .line 344
    .local v9, "dy":F
    new-instance v18, Landroid/graphics/Rect;

    float-to-int v0, v8

    move/from16 v19, v0

    float-to-int v0, v9

    move/from16 v20, v0

    add-float v21, v8, v12

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-float v22, v9, v12

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 346
    .local v18, "srcRect":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 347
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1, v6, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 349
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_0

    .line 350
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    .line 326
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "color":I
    .end local v6    # "dstRect":Landroid/graphics/Rect;
    .end local v7    # "dstRectF":Landroid/graphics/RectF;
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v13    # "output":Landroid/graphics/Bitmap;
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "roundPx":F
    .end local v18    # "srcRect":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v17, p0

    goto/16 :goto_2
.end method

.method private processBitmap(III)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "imageType"    # I
    .param p3, "imageFormType"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p2}, Lcom/biznessapps/utils/google/caching/ImageResizer;->getImageSize(I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageWidth:I

    .line 121
    iget v0, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageWidth:I

    iput v0, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageHeight:I

    .line 122
    iget-object v0, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageWidth:I

    iget v2, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageHeight:I

    invoke-static {v0, p1, v1, v2, p3}, Lcom/biznessapps/utils/google/caching/ImageResizer;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getImageSize(I)I
    .locals 7
    .param p1, "imageType"    # I

    .prologue
    .line 127
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/biznessapps/layout/R$dimen;->image_thumbnail_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    .local v1, "imageSize":I
    :goto_0
    return v1

    .line 129
    .end local v1    # "imageSize":I
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/biznessapps/layout/R$dimen;->image_gallery_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "imageSize":I
    goto :goto_0

    .line 131
    .end local v1    # "imageSize":I
    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 132
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getDeviceHeight()I

    move-result v0

    .line 133
    .local v0, "height":I
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v2

    .line 134
    .local v2, "width":I
    if-le v0, v2, :cond_2

    .end local v0    # "height":I
    :goto_1
    int-to-double v3, v0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 135
    .restart local v1    # "imageSize":I
    goto :goto_0

    .end local v1    # "imageSize":I
    .restart local v0    # "height":I
    :cond_2
    move v0, v2

    .line 134
    goto :goto_1

    .line 136
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_3
    iget-object v3, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/biznessapps/layout/R$dimen;->image_list_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .restart local v1    # "imageSize":I
    goto :goto_0
.end method

.method protected processBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "imageType"    # I
    .param p3, "imageFormType"    # I

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/biznessapps/utils/google/caching/ImageResizer;->processBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1, p1}, Lcom/biznessapps/utils/google/caching/ImageResizer;->setImageSize(II)V

    .line 110
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageWidth:I

    .line 100
    iput p2, p0, Lcom/biznessapps/utils/google/caching/ImageResizer;->mImageHeight:I

    .line 101
    return-void
.end method

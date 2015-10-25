.class public Lcom/biznessapps/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/utils/CommonUtils$1;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0xc350

.field public static final DATE_MILISECONDS:J = 0x5265c00L

.field public static final HOUR_MILISECONDS:J = 0x36ee80L

.field public static final METER_TO_YARD:F = 1.0936133f

.field public static final MIN_MILISECONDS:J = 0xea60L

.field public static final SECOND_MILISECONDS:J = 0x3e8L

.field public static final WEEK_MILISECONDS:J = 0x240c8400L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method public static compressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "srcTxt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 808
    .local v1, "rstBao":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 809
    .local v2, "zos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 810
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 812
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 813
    .local v0, "bytes":[B
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertFileToBytes(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 666
    const/4 v3, 0x0

    .line 667
    .local v3, "result":[B
    if-eqz p0, :cond_0

    .line 670
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 671
    .local v2, "fio":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 672
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v0}, Lcom/biznessapps/utils/CommonUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 673
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 680
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "fio":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 676
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static convertImageToBytes(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "scaledBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "result":[B
    if-eqz p0, :cond_0

    .line 404
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 406
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 411
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-object v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    const v2, 0xc350

    new-array v0, v2, [B

    .line 693
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 694
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 697
    return-void
.end method

.method public static createEmptyImageFile(Landroid/content/Context;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const/4 v3, 0x0

    .line 381
    .local v3, "imageUri":Landroid/net/Uri;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jpeg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "imageFileName":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 390
    .local v4, "storageDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 393
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "image":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 398
    .end local v1    # "image":Ljava/io/File;
    .end local v2    # "imageFileName":Ljava/lang/String;
    .end local v4    # "storageDir":Ljava/io/File;
    :goto_1
    return-object v3

    .line 387
    .restart local v2    # "imageFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "storageDir":Ljava/io/File;
    goto :goto_0

    .line 395
    .end local v2    # "imageFileName":Ljava/lang/String;
    .end local v4    # "storageDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createImageFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 642
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JPEG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "imageFileName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 648
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 652
    .local v4, "storageDir":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "imageFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 656
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 657
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v6, v7, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v2    # "imageFilePath":Ljava/lang/String;
    .end local v3    # "newFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 658
    .restart local v2    # "imageFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static customizeFooterNavigationBar(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p0, "footerContainer"    # Landroid/view/View;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 564
    const/high16 v0, -0x1000000

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 565
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 567
    :cond_0
    return-void
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 1049
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1051
    .local v0, "apiLevel":I
    return v0
.end method

.method public static getBitmapInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 109
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 110
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 111
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 113
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 115
    return-object v0
.end method

.method public static getButtonDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .param p0, "selectedState"    # Landroid/graphics/drawable/Drawable;
    .param p1, "unSelectedState"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 571
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 572
    .local v0, "listItemDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v2, 0x10100a1

    .line 573
    .local v2, "stateSelected":I
    const v1, 0x10100a7

    .line 575
    .local v1, "statePressed":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    neg-int v4, v1

    aput v4, v3, v5

    neg-int v4, v2

    aput v4, v3, v6

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 578
    new-array v3, v6, [I

    aput v1, v3, v5

    invoke-virtual {v0, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 581
    new-array v3, v6, [I

    aput v2, v3, v5

    invoke-virtual {v0, v3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 584
    return-object v0
.end method

.method public static getColoredDrawable(Landroid/content/res/Resources;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "colorForBg"    # I
    .param p2, "drawableResId"    # I

    .prologue
    .line 437
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 438
    .local v2, "drawableBitmap":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    .local v0, "bgBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 440
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 443
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {v0, v3, v4, p1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 440
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 439
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
    .end local v4    # "y":I
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 449
    .local v1, "coloredDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 450
    return-object v1
.end method

.method public static getColoredMapPin(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "mapWidthId"    # I
    .param p3, "newColor"    # I

    .prologue
    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 525
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v13, v0

    .line 526
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

    .line 527
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

    .line 528
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

    .line 529
    .local v21, "oldColor":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->red(I)I

    move-result v24

    .line 530
    .local v24, "r1":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 531
    .local v15, "g1":I
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 532
    .local v6, "b1":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 533
    .local v25, "r2":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v16

    .line 534
    .local v16, "g2":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 535
    .local v7, "b2":I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v11, v26, v27

    .line 536
    .local v11, "dr":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    div-float v10, v26, v27

    .line 537
    .local v10, "dg":F
    int-to-float v0, v7

    move/from16 v26, v0

    int-to-float v0, v6

    move/from16 v27, v0

    div-float v9, v26, v27

    .line 539
    .local v9, "db":F
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 540
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 541
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    .line 542
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

    .line 543
    .local v23, "r":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->green(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v10

    move/from16 v0, v26

    float-to-int v14, v0

    .line 544
    .local v14, "g":I
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->blue(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v9

    move/from16 v0, v26

    float-to-int v5, v0

    .line 545
    .local v5, "b":I
    const/16 v26, 0xff

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 546
    const/16 v23, 0xff

    .line 547
    :cond_0
    const/16 v26, 0xff

    move/from16 v0, v26

    if-le v14, v0, :cond_1

    .line 548
    const/16 v14, 0xff

    .line 549
    :cond_1
    const/16 v26, 0xff

    move/from16 v0, v26

    if-le v5, v0, :cond_2

    .line 550
    const/16 v5, 0xff

    .line 551
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 552
    .local v4, "a":I
    move/from16 v0, v23

    invoke-static {v4, v0, v14, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    .line 553
    .local v20, "newPixel":I
    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 540
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 539
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v14    # "g":I
    .end local v20    # "newPixel":I
    .end local v22    # "pixel":I
    .end local v23    # "r":I
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 556
    .end local v18    # "j":I
    :cond_4
    new-instance v26, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v26
.end method

.method public static getCompositeDrawable(Landroid/content/res/Resources;II)Landroid/graphics/drawable/LayerDrawable;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "colorForBg"    # I
    .param p2, "drawableResId"    # I

    .prologue
    const/4 v9, 0x1

    .line 416
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 417
    .local v3, "drawableBitmap":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    .local v0, "bgBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 419
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 422
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    if-eqz v8, :cond_0

    .line 423
    invoke-virtual {v0, v6, v7, p1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 419
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 418
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 427
    .end local v7    # "y":I
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 428
    .local v1, "bgLayer":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    .local v4, "drawableLayer":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v8, 0x2

    new-array v5, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v1, v5, v8

    aput-object v4, v5, v9

    .line 431
    .local v5, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 432
    .local v2, "composite":Landroid/graphics/drawable/LayerDrawable;
    return-object v2
.end method

.method public static getCurrencySymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 802
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    .line 803
    .local v0, "currencyObject":Ljava/util/Currency;
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 1032
    const-string v0, "dd/MM/yyyy"

    invoke-static {p0, v0}, Lcom/biznessapps/utils/CommonUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 1036
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1037
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 1040
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1045
    :goto_0
    return-object v0

    .line 1041
    :catch_0
    move-exception v2

    .line 1042
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDateFromEnDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "dateEnString"    # Ljava/lang/String;

    .prologue
    .line 999
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MMM yyyy"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1000
    .local v0, "formatter_one":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1001
    .local v1, "formatter_two":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1002
    .local v3, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v0, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 1003
    .local v2, "frmTime":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, "returnString":Ljava/lang/String;
    return-object v4
.end method

.method public static getDateString(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mTime"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 1019
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1021
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method

.method public static getDateTimeMilis()J
    .locals 3

    .prologue
    .line 867
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 868
    .local v0, "nowDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->getDateTimeMilis(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getDateTimeMilis(J)J
    .locals 5
    .param p0, "miliseconds"    # J

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v1, 0x0

    .line 872
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 873
    .local v0, "nowDate":Ljava/util/Date;
    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 874
    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 875
    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 876
    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 878
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getDateTimeMilis(JI)J
    .locals 8
    .param p0, "miliseconds"    # J
    .param p2, "dateIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 928
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 929
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 931
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 932
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 934
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getDayTimeMilis(JI)J
    .locals 8
    .param p0, "miliseconds"    # J
    .param p2, "dayIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 914
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 915
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 918
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 919
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 920
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 922
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 924
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getEnStringDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 982
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 983
    .local v3, "shortFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM yyyy"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 985
    .local v1, "mediumFormat":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 988
    .local v2, "resultDate":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 994
    :goto_0
    return-object v2

    .line 989
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 121
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 126
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "picturePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 129
    return-object v8
.end method

.method public static getListItemDrawable(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 10
    .param p0, "bgColor"    # I
    .param p1, "unselectedColor"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 592
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 593
    .local v0, "listItemDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v3, 0x101009c

    .line 594
    .local v3, "stateFocused":I
    const v4, 0x10100a7

    .line 596
    .local v4, "statePressed":I
    move v1, p0

    .line 598
    .local v1, "selectedColor":I
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 599
    .local v5, "unselectedState":Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 601
    .local v2, "selectedState":Landroid/graphics/drawable/ColorDrawable;
    const/4 v6, 0x2

    new-array v6, v6, [I

    neg-int v7, v4

    aput v7, v6, v8

    neg-int v7, v3

    aput v7, v6, v9

    invoke-virtual {v0, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 604
    new-array v6, v9, [I

    aput v4, v6, v8

    invoke-virtual {v0, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 607
    new-array v6, v9, [I

    aput v3, v6, v8

    invoke-virtual {v0, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 610
    return-object v0
.end method

.method public static getListItemDrawable(Lcom/biznessapps/api/UiSettings;I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .param p0, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p1, "unselectedColor"    # I

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-static {v0, p1}, Lcom/biznessapps/utils/CommonUtils;->getListItemDrawable(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stringToHash"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 88
    .local v4, "m":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 91
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 92
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "hashtext":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 99
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local v3    # "hashtext":Ljava/lang/String;
    .end local v4    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public static getMonthTimeMilis(J)J
    .locals 3
    .param p0, "miliseconds"    # J

    .prologue
    .line 938
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 940
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/biznessapps/utils/CommonUtils;->getMonthTimeMilis(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getMonthTimeMilis(JI)J
    .locals 8
    .param p0, "miliseconds"    # J
    .param p2, "monthIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 944
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 945
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 947
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    const/4 v3, 0x1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 948
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 950
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getPath(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 629
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    .line 630
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 631
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 632
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 633
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 634
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .end local v6    # "column_index":I
    :cond_0
    return-object v3
.end method

.method public static getResizeBitmap(Landroid/graphics/Bitmap;IIILcom/biznessapps/utils/ImageScaleType;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "degree"    # I
    .param p4, "scaleType"    # Lcom/biznessapps/utils/ImageScaleType;
    .param p5, "isPanScan"    # Z

    .prologue
    .line 154
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/CommonUtils;->getResizeBitmap(Landroid/graphics/Bitmap;IIILcom/biznessapps/utils/ImageScaleType;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizeBitmap(Landroid/graphics/Bitmap;IIILcom/biznessapps/utils/ImageScaleType;ZZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "degree"    # I
    .param p4, "scaleType"    # Lcom/biznessapps/utils/ImageScaleType;
    .param p5, "isPanScan"    # Z
    .param p6, "resizeBoundary"    # Z

    .prologue
    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v14}, Lcom/biznessapps/utils/CommonUtils;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 162
    .local v9, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 163
    .local v8, "sourceHeight":I
    move/from16 v0, p1

    if-ne v9, v0, :cond_0

    move/from16 v0, p2

    if-ne v8, v0, :cond_0

    .line 220
    .end local p0    # "source":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 169
    .restart local p0    # "source":Landroid/graphics/Bitmap;
    :cond_0
    move/from16 v0, p1

    int-to-float v14, v0

    int-to-float v15, v9

    div-float v12, v14, v15

    .line 170
    .local v12, "xScale":F
    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v15, v8

    div-float v13, v14, v15

    .line 171
    .local v13, "yScale":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 173
    .local v5, "scale":F
    sget-object v14, Lcom/biznessapps/utils/CommonUtils$1;->$SwitchMap$com$biznessapps$utils$ImageScaleType:[I

    invoke-virtual/range {p4 .. p4}, Lcom/biznessapps/utils/ImageScaleType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 191
    const/4 v14, 0x0

    invoke-static {v14}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 195
    :goto_1
    int-to-float v14, v9

    mul-float v7, v5, v14

    .line 196
    .local v7, "scaledWidth":F
    int-to-float v14, v8

    mul-float v6, v5, v14

    .line 199
    .local v6, "scaledHeight":F
    if-nez p6, :cond_3

    .line 202
    move/from16 v0, p1

    int-to-float v14, v0

    sub-float/2addr v14, v7

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    .line 203
    .local v4, "left":F
    move/from16 v0, p2

    int-to-float v14, v0

    sub-float/2addr v14, v6

    const/high16 v15, 0x40000000    # 2.0f

    div-float v11, v14, v15

    .line 207
    .local v11, "top":F
    new-instance v10, Landroid/graphics/RectF;

    add-float v14, v4, v7

    add-float v15, v11, v6

    invoke-direct {v10, v4, v11, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 211
    .local v10, "targetRect":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 217
    .end local v4    # "left":F
    .end local v11    # "top":F
    .local v3, "dest":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 218
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v14, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 p0, v3

    .line 220
    goto :goto_0

    .line 175
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "dest":Landroid/graphics/Bitmap;
    .end local v6    # "scaledHeight":F
    .end local v7    # "scaledWidth":F
    .end local v10    # "targetRect":Landroid/graphics/RectF;
    :pswitch_0
    move v5, v12

    .line 176
    goto :goto_1

    .line 178
    :pswitch_1
    move v5, v13

    .line 179
    goto :goto_1

    .line 181
    :pswitch_2
    const-string v14, "Not Implemented"

    if-nez v14, :cond_1

    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljunit/framework/Assert;->assertTrue(Z)V

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_3

    .line 184
    :pswitch_3
    if-eqz p5, :cond_2

    .line 185
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_1

    .line 187
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 189
    goto :goto_1

    .line 213
    .restart local v6    # "scaledHeight":F
    .restart local v7    # "scaledWidth":F
    :cond_3
    float-to-int v14, v7

    float-to-int v15, v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    .restart local v3    # "dest":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v10, v14, v15, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v10    # "targetRect":Landroid/graphics/RectF;
    goto :goto_2

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getScaledPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 332
    const/4 v14, 0x0

    .line 333
    .local v14, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 334
    .local v12, "primaryBitmap":Landroid/graphics/Bitmap;
    const/16 v11, 0x200

    .line 336
    .local v11, "optimalBitmapWidth":I
    const/4 v15, 0x0

    .local v15, "width":I
    const/4 v8, 0x0

    .line 337
    .local v8, "height":I
    if-eqz p1, :cond_1

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "path":Ljava/lang/String;
    const/16 v2, 0x200

    const/16 v3, 0x200

    const/4 v4, 0x0

    sget-object v5, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_PROPER:Lcom/biznessapps/utils/ImageScaleType;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/CommonUtils;->safeGetBitmapDrawable(Landroid/content/Context;Ljava/lang/String;IIILcom/biznessapps/utils/ImageScaleType;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 369
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v14

    .line 341
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "primaryBitmap":Landroid/graphics/Bitmap;
    check-cast v12, Landroid/graphics/Bitmap;

    .line 343
    .restart local v12    # "primaryBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    .line 344
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 345
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 347
    int-to-float v0, v15

    int-to-float v2, v11

    div-float v13, v0, v2

    .line 348
    .local v13, "ratio":F
    int-to-float v0, v15

    div-float/2addr v0, v13

    float-to-int v10, v0

    .line 349
    .local v10, "newWidth":I
    int-to-float v0, v8

    div-float/2addr v0, v13

    float-to-int v9, v0

    .line 351
    .local v9, "newHeight":I
    if-eqz v12, :cond_3

    .line 353
    const/4 v0, 0x0

    invoke-static {v12, v10, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 359
    :cond_2
    :goto_1
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 360
    const/4 v12, 0x0

    .line 363
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 354
    .end local v7    # "file":Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_2

    goto :goto_1
.end method

.method public static getStringDate(J)Ljava/lang/String;
    .locals 7
    .param p0, "longDate"    # J

    .prologue
    .line 971
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 972
    .local v3, "tmpPubDate":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 974
    .local v1, "publicationDate":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MMM yyyy"

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 975
    .local v0, "formatter_date":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, "resultDate":Ljava/lang/String;
    return-object v2
.end method

.method public static getTimeMilis()J
    .locals 2

    .prologue
    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeSecs()J
    .locals 4

    .prologue
    .line 850
    invoke-static {}, Lcom/biznessapps/utils/CommonUtils;->getTimeMilis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUTCDateString(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mTime"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 1009
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1012
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1013
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "dateString":Ljava/lang/String;
    return-object v1
.end method

.method public static getUTCTimeMilis()J
    .locals 4

    .prologue
    .line 858
    const-string v3, "UTC+8"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 860
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 862
    .local v1, "milis":J
    return-wide v1
.end method

.method public static getUrlsFromPlsStream(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p0, "plsUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v13, "streams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v9, 0x2800

    .line 709
    .local v9, "maxFileSize":I
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 710
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 711
    .local v5, "is":Ljava/io/InputStream;
    new-array v2, v9, [B

    .line 712
    .local v2, "buf":[B
    const/4 v15, 0x0

    invoke-virtual {v5, v2, v15, v9}, Ljava/io/InputStream;->read([BII)I

    .line 713
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .line 714
    .local v10, "pls":Ljava/lang/String;
    const-string v15, "\n"

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 715
    .local v8, "lines":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v15, v8

    if-lez v15, :cond_2

    .line 716
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v1, v4

    .line 717
    .local v7, "line":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 718
    .local v11, "splitedLine":[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const-string v15, "file1"

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 719
    const/4 v15, 0x1

    aget-object v12, v11, v15

    .line 720
    .local v12, "streamUrl":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 721
    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x2

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 723
    :cond_0
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v12    # "streamUrl":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "buf":[B
    .end local v4    # "i$":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len$":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v10    # "pls":Ljava/lang/String;
    .end local v11    # "splitedLine":[Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 728
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v13
.end method

.method public static getWeekTimeMilis()J
    .locals 3

    .prologue
    .line 882
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 883
    .local v0, "nowDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->getWeekTimeMilis(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getWeekTimeMilis(J)J
    .locals 8
    .param p0, "miliseconds"    # J

    .prologue
    const/4 v4, 0x0

    .line 887
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 888
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 890
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 891
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 892
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 893
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 895
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getWeekTimeMilis(JI)J
    .locals 8
    .param p0, "miliseconds"    # J
    .param p2, "weekIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 899
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 900
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 903
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 904
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 905
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 906
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 907
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 908
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 910
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getYardsFromMeters(F)F
    .locals 2
    .param p0, "meters"    # F

    .prologue
    .line 1056
    const v1, 0x3f8bfb85

    mul-float v0, p0, v1

    .line 1058
    .local v0, "yards":F
    return v0
.end method

.method public static getYearTimeMilis(J)J
    .locals 3
    .param p0, "miliseconds"    # J

    .prologue
    .line 954
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 956
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-static {p0, p1, v1}, Lcom/biznessapps/utils/CommonUtils;->getYearTimeMilis(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getYearTimeMilis(JI)J
    .locals 8
    .param p0, "miliseconds"    # J
    .param p2, "year"    # I

    .prologue
    const/4 v2, 0x0

    .line 960
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 961
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 963
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v3, 0x1

    move v1, p2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 964
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 966
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 616
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 617
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 619
    return-object v0
.end method

.method public static makeThumb(Ljava/lang/String;IIILcom/biznessapps/utils/ImageScaleType;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "iWidth"    # I
    .param p2, "iHeight"    # I
    .param p3, "degree"    # I
    .param p4, "scaleType"    # Lcom/biznessapps/utils/ImageScaleType;
    .param p5, "isPanScan"    # Z

    .prologue
    .line 225
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/CommonUtils;->makeThumb(Ljava/lang/String;IIILcom/biznessapps/utils/ImageScaleType;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumb(Ljava/lang/String;IIILcom/biznessapps/utils/ImageScaleType;ZZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "iWidth"    # I
    .param p2, "iHeight"    # I
    .param p3, "degree"    # I
    .param p4, "scaleType"    # Lcom/biznessapps/utils/ImageScaleType;
    .param p5, "isPanScan"    # Z
    .param p6, "resizeBoundary"    # Z

    .prologue
    .line 230
    const/4 v13, 0x0

    .line 231
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    .line 234
    .local v1, "thumb":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/biznessapps/utils/CommonUtils;->getBitmapInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    .line 239
    const/4 v14, 0x0

    .line 241
    .local v14, "rotate":I
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 242
    .local v8, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v9

    .line 243
    .local v9, "exifOrientation":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_0

    .line 244
    packed-switch v9, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    :pswitch_0
    add-int p3, p3, v14

    .line 258
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_7

    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_7

    .line 260
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 261
    :cond_1
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 p1, v0

    .line 262
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 p2, v0

    .line 264
    :cond_2
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    add-int v2, v2, p1

    add-int/lit8 v2, v2, -0x1

    div-int v16, v2, p1

    .line 265
    .local v16, "widthFactor":I
    iget v2, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int v2, v2, p2

    add-int/lit8 v2, v2, -0x1

    div-int v11, v2, p2

    .line 267
    .local v11, "heightFactor":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 268
    const/4 v2, 0x1

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 271
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_4

    .line 272
    const/4 v10, 0x1

    .line 273
    .local v10, "factor":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 274
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v15, v2

    .line 275
    .local v15, "temp":I
    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 279
    .end local v15    # "temp":I
    :cond_3
    move/from16 v16, v10

    .line 282
    .end local v10    # "factor":I
    .end local v12    # "i":I
    :cond_4
    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 283
    const/4 v2, 0x0

    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 285
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v11    # "heightFactor":I
    .end local v16    # "widthFactor":I
    :goto_2
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 290
    invoke-static/range {v1 .. v7}, Lcom/biznessapps/utils/CommonUtils;->getResizeBitmap(Landroid/graphics/Bitmap;IIILcom/biznessapps/utils/ImageScaleType;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v8    # "exif":Landroid/media/ExifInterface;
    .end local v9    # "exifOrientation":I
    .end local v14    # "rotate":I
    :goto_3
    move-object v2, v1

    .line 294
    :goto_4
    return-object v2

    .line 237
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 246
    .restart local v8    # "exif":Landroid/media/ExifInterface;
    .restart local v9    # "exifOrientation":I
    .restart local v14    # "rotate":I
    :pswitch_1
    const/16 v14, 0x5a

    .line 247
    goto :goto_0

    .line 249
    :pswitch_2
    const/16 v14, 0xb4

    .line 250
    goto :goto_0

    .line 252
    :pswitch_3
    const/16 v14, 0x10e

    goto :goto_0

    .line 277
    .restart local v10    # "factor":I
    .restart local v11    # "heightFactor":I
    .restart local v12    # "i":I
    .restart local v15    # "temp":I
    .restart local v16    # "widthFactor":I
    :cond_6
    move v10, v15

    .line 273
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 287
    .end local v10    # "factor":I
    .end local v11    # "heightFactor":I
    .end local v12    # "i":I
    .end local v15    # "temp":I
    .end local v16    # "widthFactor":I
    :cond_7
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 291
    .end local v8    # "exif":Landroid/media/ExifInterface;
    .end local v9    # "exifOrientation":I
    .end local v14    # "rotate":I
    :catch_0
    move-exception v2

    goto :goto_3

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static overrideColorWithTransparency(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "alphaLevel"    # I

    .prologue
    .line 516
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 519
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 521
    :cond_0
    return-void
.end method

.method public static overrideImageColor(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "color"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 461
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 462
    return-void
.end method

.method public static overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "color"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 509
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 510
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "shouldFreeOrgBitmap"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 135
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 136
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 139
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 140
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_1

    .line 141
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    move-object p0, v7

    .line 149
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p0

    .line 145
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static safeGetBitmapDrawable(Landroid/content/Context;Ljava/lang/String;IIILcom/biznessapps/utils/ImageScaleType;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "degree"    # I
    .param p5, "scaleType"    # Lcom/biznessapps/utils/ImageScaleType;
    .param p6, "isPanScan"    # Z

    .prologue
    .line 299
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 301
    const/4 v9, 0x0

    .line 302
    .local v9, "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/biznessapps/utils/CommonUtils;->getBitmapInfo(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    .line 303
    .local v11, "option":Landroid/graphics/BitmapFactory$Options;
    iget v1, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 304
    .local v1, "width":I
    iget v2, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 306
    .local v2, "height":I
    if-gt v1, p2, :cond_0

    if-le v2, p3, :cond_3

    .line 307
    :cond_0
    move v1, p2

    .line 308
    move v2, p3

    .line 309
    :try_start_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :catch_0
    move-exception v8

    .line 314
    .local v8, "error":Ljava/lang/OutOfMemoryError;
    const/4 v6, 0x1

    move-object v0, p1

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/utils/CommonUtils;->makeThumb(Ljava/lang/String;IIILcom/biznessapps/utils/ImageScaleType;ZZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 315
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 316
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 320
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "error":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_1
    return-object v9

    .line 299
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v9    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "option":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    .restart local v1    # "width":I
    .restart local v2    # "height":I
    .restart local v9    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "option":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_1
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v10, "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v9, v10

    .line 318
    .end local v10    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "mDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

.method public static sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V
    .locals 16
    .param p0, "item"    # Lcom/biznessapps/common/entities/AnalyticEntity;

    .prologue
    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/biznessapps/layout/R$string;->code_name:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 739
    .local v5, "defaultApp":Ljava/lang/String;
    const-string v13, "biznessapps"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "previewapp11"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    const/4 v7, 0x1

    .line 741
    .local v7, "isPreviewApp":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getAccountId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 743
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v6

    .line 744
    .local v6, "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getAccountId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v12

    .line 745
    .local v12, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v12, :cond_1

    .line 746
    const-string v0, "0"

    .line 747
    .local v0, "EMPTY_FIELD":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "appId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getTabId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getTabId()Ljava/lang/String;

    move-result-object v11

    .line 749
    .local v11, "tabId":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getItemId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getItemId()Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, "itemId":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getCatId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/common/entities/AnalyticEntity;->getCatId()Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "catId":Ljava/lang/String;
    :goto_3
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 753
    .local v2, "builder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    const/4 v13, 0x1

    invoke-virtual {v2, v13, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 754
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 755
    .local v9, "myVersion":Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 756
    .local v10, "str":Ljava/lang/String;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ANDROID v"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 757
    const/4 v13, 0x3

    invoke-virtual {v2, v13, v10}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 758
    const/4 v13, 0x4

    if-eqz v7, :cond_6

    .end local v5    # "defaultApp":Ljava/lang/String;
    :goto_4
    invoke-virtual {v2, v13, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 759
    invoke-virtual {v2, v11}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 768
    .end local v0    # "EMPTY_FIELD":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "builder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v3    # "catId":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v8    # "itemId":Ljava/lang/String;
    .end local v9    # "myVersion":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "tabId":Ljava/lang/String;
    .end local v12    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_1
    return-void

    .line 739
    .end local v7    # "isPreviewApp":Z
    .restart local v5    # "defaultApp":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 748
    .restart local v0    # "EMPTY_FIELD":Ljava/lang/String;
    .restart local v1    # "appId":Ljava/lang/String;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .restart local v7    # "isPreviewApp":Z
    .restart local v12    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_3
    const-string v11, "0"

    goto :goto_1

    .line 749
    .restart local v11    # "tabId":Ljava/lang/String;
    :cond_4
    const-string v8, "0"

    goto :goto_2

    .line 750
    .restart local v8    # "itemId":Ljava/lang/String;
    :cond_5
    const-string v3, "0"

    goto :goto_3

    .line 758
    .restart local v2    # "builder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .restart local v3    # "catId":Ljava/lang/String;
    .restart local v9    # "myVersion":Ljava/lang/String;
    .restart local v10    # "str":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public static sendTimingEvent(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "loadingTime"    # J

    .prologue
    const/4 v9, 0x1

    .line 771
    sget v10, Lcom/biznessapps/layout/R$string;->code_name:I

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "defaultApp":Ljava/lang/String;
    const-string v10, "biznessapps"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "previewapp11"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    move v4, v9

    .line 774
    .local v4, "isPreviewApp":Z
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v6

    .line 775
    .local v6, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 776
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v3

    .line 777
    .local v3, "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v8

    .line 778
    .local v8, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v8, :cond_1

    .line 779
    const-string v0, "0"

    .line 781
    .local v0, "EMPTY_FIELD":Ljava/lang/String;
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 782
    .local v5, "myVersion":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 784
    .local v7, "str":Ljava/lang/String;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 785
    .local v1, "builder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    invoke-virtual {v6}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 786
    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Android "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 787
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v7}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 788
    const/4 v9, 0x4

    if-eqz v4, :cond_3

    .end local v2    # "defaultApp":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v9, v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 790
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v9

    const-string v10, "Loading time"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 798
    .end local v0    # "EMPTY_FIELD":Ljava/lang/String;
    .end local v1    # "builder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    .end local v3    # "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v5    # "myVersion":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_1
    return-void

    .line 772
    .end local v4    # "isPreviewApp":Z
    .end local v6    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    .restart local v2    # "defaultApp":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 788
    .restart local v0    # "EMPTY_FIELD":Ljava/lang/String;
    .restart local v1    # "builder":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    .restart local v3    # "instance":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .restart local v4    # "isPreviewApp":Z
    .restart local v5    # "myVersion":Ljava/lang/String;
    .restart local v6    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "color"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 466
    return-void
.end method

.method public static uncompressString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "zippedBase64Str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 822
    const/4 v2, 0x0

    .line 824
    .local v2, "result":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 825
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 827
    .local v4, "zi":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 830
    .end local v4    # "zi":Ljava/util/zip/GZIPInputStream;
    .local v5, "zi":Ljava/util/zip/GZIPInputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 831
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "value":I
    :cond_0
    :goto_0
    if-eq v3, v7, :cond_1

    .line 832
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v3

    .line 833
    if-eq v3, v7, :cond_0

    .line 834
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 841
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "value":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "zi":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "zi":Ljava/util/zip/GZIPInputStream;
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    throw v6

    .line 837
    .end local v4    # "zi":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v3    # "value":I
    .restart local v5    # "zi":Ljava/util/zip/GZIPInputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 838
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 839
    new-instance v2, Ljava/lang/String;

    .end local v2    # "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 841
    .restart local v2    # "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 843
    return-object v2

    .line 841
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "value":I
    .end local v5    # "zi":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "zi":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

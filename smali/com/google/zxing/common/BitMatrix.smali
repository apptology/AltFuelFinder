.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 53
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 54
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 56
    return-void
.end method

.method private constructor <init>(III[I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowSize"    # I
    .param p4, "bits"    # [I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 61
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 63
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "stringRepresentation"    # Ljava/lang/String;
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v0, v8, [Z

    .line 71
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .line 72
    .local v1, "bitsPos":I
    const/4 v7, 0x0

    .line 73
    .local v7, "rowStartPos":I
    const/4 v6, -0x1

    .line 74
    .local v6, "rowLength":I
    const/4 v4, 0x0

    .line 75
    .local v4, "nRows":I
    const/4 v5, 0x0

    .line 76
    .local v5, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    .line 79
    :cond_1
    if-le v1, v7, :cond_3

    .line 80
    if-ne v6, v10, :cond_4

    .line 81
    sub-int v6, v1, v7

    .line 86
    :cond_2
    move v7, v1

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 89
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    :cond_4
    sub-int v8, v1, v7

    if-eq v8, v6, :cond_2

    .line 84
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "row lengths do not match"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    .line 93
    const/4 v8, 0x1

    aput-boolean v8, v0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    .line 98
    const/4 v8, 0x0

    aput-boolean v8, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal character encountered: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 107
    :cond_8
    if-le v1, v7, :cond_a

    .line 108
    if-ne v6, v10, :cond_c

    .line 109
    sub-int v6, v1, v7

    .line 113
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 116
    :cond_a
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 117
    .local v3, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_d

    .line 118
    aget-boolean v8, v0, v2

    if-eqz v8, :cond_b

    .line 119
    rem-int v8, v2, v6

    div-int v9, v2, v6

    invoke-virtual {v3, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 117
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v2    # "i":I
    .end local v3    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_c
    sub-int v8, v1, v7

    if-eq v8, v6, :cond_9

    .line 111
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "row lengths do not match"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 122
    .restart local v2    # "i":I
    .restart local v3    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_d
    return-object v3
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    .line 190
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .prologue
    .line 433
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 393
    instance-of v2, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 396
    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 397
    .local v0, "other":Lcom/google/zxing/common/BitMatrix;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 160
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 161
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 162
    return-void
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 133
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 134
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 7

    .prologue
    .line 349
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 350
    .local v1, "bitsOffset":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 351
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 353
    :cond_0
    if-gez v1, :cond_1

    .line 354
    const/4 v5, 0x0

    .line 367
    :goto_1
    return-object v5

    .line 357
    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    .line 358
    .local v4, "y":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    mul-int/lit8 v3, v5, 0x20

    .line 360
    .local v3, "x":I
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    .line 361
    .local v2, "theBits":I
    const/16 v0, 0x1f

    .line 362
    .local v0, "bit":I
    :goto_2
    ushr-int v5, v2, v0

    if-nez v5, :cond_2

    .line 363
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 365
    :cond_2
    add-int/2addr v3, v0

    .line 367
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 12

    .prologue
    .line 276
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 277
    .local v3, "left":I
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 278
    .local v6, "top":I
    const/4 v4, -0x1

    .line 279
    .local v4, "right":I
    const/4 v1, -0x1

    .line 281
    .local v1, "bottom":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    iget v10, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v9, v10, :cond_7

    .line 282
    const/4 v8, 0x0

    .local v8, "x32":I
    :goto_1
    iget v10, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v8, v10, :cond_6

    .line 283
    iget-object v10, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v11, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    aget v5, v10, v11

    .line 284
    .local v5, "theBits":I
    if-eqz v5, :cond_5

    .line 285
    if-ge v9, v6, :cond_0

    .line 286
    move v6, v9

    .line 288
    :cond_0
    if-le v9, v1, :cond_1

    .line 289
    move v1, v9

    .line 291
    :cond_1
    mul-int/lit8 v10, v8, 0x20

    if-ge v10, v3, :cond_3

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "bit":I
    :goto_2
    rsub-int/lit8 v10, v0, 0x1f

    shl-int v10, v5, v10

    if-nez v10, :cond_2

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_2
    mul-int/lit8 v10, v8, 0x20

    add-int/2addr v10, v0

    if-ge v10, v3, :cond_3

    .line 297
    mul-int/lit8 v10, v8, 0x20

    add-int v3, v10, v0

    .line 300
    .end local v0    # "bit":I
    :cond_3
    mul-int/lit8 v10, v8, 0x20

    add-int/lit8 v10, v10, 0x1f

    if-le v10, v4, :cond_5

    .line 301
    const/16 v0, 0x1f

    .line 302
    .restart local v0    # "bit":I
    :goto_3
    ushr-int v10, v5, v0

    if-nez v10, :cond_4

    .line 303
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 305
    :cond_4
    mul-int/lit8 v10, v8, 0x20

    add-int/2addr v10, v0

    if-le v10, v4, :cond_5

    .line 306
    mul-int/lit8 v10, v8, 0x20

    add-int v4, v10, v0

    .line 282
    .end local v0    # "bit":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 281
    .end local v5    # "theBits":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 313
    .end local v8    # "x32":I
    :cond_7
    sub-int v7, v4, v3

    .line 314
    .local v7, "width":I
    sub-int v2, v1, v6

    .line 316
    .local v2, "height":I
    if-ltz v7, :cond_8

    if-gez v2, :cond_9

    .line 317
    :cond_8
    const/4 v10, 0x0

    .line 320
    :goto_4
    return-object v10

    :cond_9
    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v6, v10, v11

    const/4 v11, 0x2

    aput v7, v10, v11

    const/4 v11, 0x3

    aput v2, v10, v11

    goto :goto_4
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 232
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 233
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2    # "row":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 237
    .restart local p2    # "row":Lcom/google/zxing/common/BitArray;
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    .line 238
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 239
    mul-int/lit8 v2, v1, 0x20

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v0    # "offset":I
    .end local v1    # "x":I
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    .line 241
    .restart local v0    # "offset":I
    .restart local v1    # "x":I
    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "bitsOffset":I
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ne v1, v5, :cond_1

    .line 334
    const/4 v5, 0x0

    .line 345
    :goto_1
    return-object v5

    .line 336
    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    .line 337
    .local v4, "y":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    mul-int/lit8 v3, v5, 0x20

    .line 339
    .local v3, "x":I
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    .line 340
    .local v2, "theBits":I
    const/4 v0, 0x0

    .line 341
    .local v0, "bit":I
    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v2, v5

    if-nez v5, :cond_2

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 344
    :cond_2
    add-int/2addr v3, v0

    .line 345
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 403
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 404
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int v0, v1, v2

    .line 405
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int v0, v1, v2

    .line 406
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int v0, v1, v2

    .line 407
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int v0, v1, v2

    .line 408
    return v0
.end method

.method public rotate180()V
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 257
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 258
    .local v1, "height":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 259
    .local v3, "topRow":Lcom/google/zxing/common/BitArray;
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 260
    .local v0, "bottomRow":Lcom/google/zxing/common/BitArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_0

    .line 261
    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 262
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 263
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 264
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 265
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 266
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 144
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 145
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 146
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v9, 0x1

    .line 204
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 205
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_1
    if-lt p4, v9, :cond_2

    if-ge p3, v9, :cond_3

    .line 208
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :cond_3
    add-int v2, p1, p3

    .line 211
    .local v2, "right":I
    add-int v0, p2, p4

    .line 212
    .local v0, "bottom":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 213
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    :cond_5
    move v4, p2

    .local v4, "y":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 216
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 217
    .local v1, "offset":I
    move v3, p1

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 218
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v6, v3, 0x20

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "offset":I
    .end local v3    # "x":I
    :cond_7
    return-void
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 249
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v0, "\n"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 423
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    .line 424
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object v3, p2

    .line 424
    goto :goto_2

    .line 426
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "x":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public unset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 149
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 150
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v0

    .line 151
    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 9
    .param p1, "mask"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 171
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getRowSize()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 173
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "input matrix dimensions do not match"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :cond_1
    new-instance v2, Lcom/google/zxing/common/BitArray;

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v5}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 176
    .local v2, "rowArray":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v4, v5, :cond_3

    .line 177
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v4, v5

    .line 178
    .local v0, "offset":I
    invoke-virtual {p1, v4, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v1

    .line 179
    .local v1, "row":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v3, v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v6, v0, v3

    aget v7, v5, v6

    aget v8, v1, v3

    xor-int/2addr v7, v8

    aput v7, v5, v6

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "offset":I
    .end local v1    # "row":[I
    .end local v3    # "x":I
    :cond_3
    return-void
.end method

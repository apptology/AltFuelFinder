.class public Lcom/biznessapps/utils/BlurEffectUtils;
.super Ljava/lang/Object;
.source "BlurEffectUtils.java"


# static fields
.field private static final ALPHA_SHADOW:F = 0.23f

.field private static final FOREGROUND_SHADOW:F = 0.95f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlurEffect(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/biznessapps/utils/BlurEffectUtils;->addBlurEffect(Landroid/graphics/Bitmap;IZFF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addBlurEffect(Landroid/graphics/Bitmap;IZFF)Landroid/graphics/Bitmap;
    .locals 48
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "useShadow"    # Z
    .param p3, "foregroundShadow"    # F
    .param p4, "alphaShadow"    # F

    .prologue
    .line 32
    if-eqz p0, :cond_0

    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_2

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 287
    :cond_1
    :goto_0
    return-object v2

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    :goto_1
    if-nez v2, :cond_3

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/biznessapps/utils/BlurEffectUtils;->convertToMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 76
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 78
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 79
    .local v3, "pix":[I
    const-string v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 82
    add-int/lit8 v41, v5, -0x1

    .line 83
    .local v41, "wm":I
    add-int/lit8 v24, v9, -0x1

    .line 84
    .local v24, "hm":I
    mul-int v40, v5, v9

    .line 85
    .local v40, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v16, v4, 0x1

    .line 87
    .local v16, "div":I
    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 88
    .local v27, "r":[I
    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 89
    .local v19, "g":[I
    move/from16 v0, v40

    new-array v11, v0, [I

    .line 91
    .local v11, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v39, v0

    .line 93
    .local v39, "vmin":[I
    add-int/lit8 v4, v16, 0x1

    shr-int/lit8 v17, v4, 0x1

    .line 94
    .local v17, "divsum":I
    mul-int v17, v17, v17

    .line 95
    move/from16 v0, v17

    mul-int/lit16 v4, v0, 0x100

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 96
    .local v18, "dv":[I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move/from16 v0, v17

    mul-int/lit16 v4, v0, 0x100

    move/from16 v0, v25

    if-ge v0, v4, :cond_5

    .line 97
    div-int v4, v25, v17

    aput v4, v18, v25

    .line 96
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 69
    .end local v3    # "pix":[I
    .end local v5    # "w":I
    .end local v9    # "h":I
    .end local v11    # "b":[I
    .end local v16    # "div":I
    .end local v17    # "divsum":I
    .end local v18    # "dv":[I
    .end local v19    # "g":[I
    .end local v24    # "hm":I
    .end local v25    # "i":I
    .end local v27    # "r":[I
    .end local v39    # "vmin":[I
    .end local v40    # "wh":I
    .end local v41    # "wm":I
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 100
    .restart local v3    # "pix":[I
    .restart local v5    # "w":I
    .restart local v9    # "h":I
    .restart local v11    # "b":[I
    .restart local v16    # "div":I
    .restart local v17    # "divsum":I
    .restart local v18    # "dv":[I
    .restart local v19    # "g":[I
    .restart local v24    # "hm":I
    .restart local v25    # "i":I
    .restart local v27    # "r":[I
    .restart local v39    # "vmin":[I
    .restart local v40    # "wh":I
    .restart local v41    # "wm":I
    :cond_5
    const/16 v44, 0x0

    .local v44, "yi":I
    move/from16 v46, v44

    .line 102
    .local v46, "yw":I
    const/4 v4, 0x3

    move/from16 v0, v16

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [[I

    .line 107
    .local v36, "stack":[[I
    add-int/lit8 v28, p1, 0x1

    .line 111
    .local v28, "r1":I
    const/16 v43, 0x0

    .local v43, "y":I
    :goto_3
    move/from16 v0, v43

    if-ge v0, v9, :cond_a

    .line 112
    const/4 v15, 0x0

    .local v15, "bsum":I
    move/from16 v23, v15

    .local v23, "gsum":I
    move/from16 v33, v15

    .local v33, "rsum":I
    move v13, v15

    .local v13, "boutsum":I
    move/from16 v21, v15

    .local v21, "goutsum":I
    move/from16 v31, v15

    .local v31, "routsum":I
    move v12, v15

    .local v12, "binsum":I
    move/from16 v20, v15

    .local v20, "ginsum":I
    move/from16 v30, v15

    .line 113
    .local v30, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v25, v0

    :goto_4
    move/from16 v0, v25

    move/from16 v1, p1

    if-gt v0, v1, :cond_7

    .line 114
    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v41

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v44

    aget v26, v3, v4

    .line 115
    .local v26, "p":I
    add-int v4, v25, p1

    aget-object v35, v36, v4

    .line 116
    .local v35, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x10

    aput v6, v35, v4

    .line 117
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x8

    aput v6, v35, v4

    .line 118
    const/4 v4, 0x2

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    aput v6, v35, v4

    .line 119
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v29, v28, v4

    .line 120
    .local v29, "rbs":I
    const/4 v4, 0x0

    aget v4, v35, v4

    mul-int v4, v4, v29

    add-int v33, v33, v4

    .line 121
    const/4 v4, 0x1

    aget v4, v35, v4

    mul-int v4, v4, v29

    add-int v23, v23, v4

    .line 122
    const/4 v4, 0x2

    aget v4, v35, v4

    mul-int v4, v4, v29

    add-int/2addr v15, v4

    .line 123
    if-lez v25, :cond_6

    .line 124
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v30, v30, v4

    .line 125
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v20, v20, v4

    .line 126
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v12, v4

    .line 113
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 128
    :cond_6
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v31, v31, v4

    .line 129
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v21, v21, v4

    .line 130
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v13, v4

    goto :goto_5

    .line 133
    .end local v26    # "p":I
    .end local v29    # "rbs":I
    .end local v35    # "sir":[I
    :cond_7
    move/from16 v37, p1

    .line 135
    .local v37, "stackpointer":I
    const/16 v42, 0x0

    .local v42, "x":I
    :goto_6
    move/from16 v0, v42

    if-ge v0, v5, :cond_9

    .line 137
    aget v4, v18, v33

    aput v4, v27, v44

    .line 138
    aget v4, v18, v23

    aput v4, v19, v44

    .line 139
    aget v4, v18, v15

    aput v4, v11, v44

    .line 141
    sub-int v33, v33, v31

    .line 142
    sub-int v23, v23, v21

    .line 143
    sub-int/2addr v15, v13

    .line 145
    sub-int v4, v37, p1

    add-int v38, v4, v16

    .line 146
    .local v38, "stackstart":I
    rem-int v4, v38, v16

    aget-object v35, v36, v4

    .line 148
    .restart local v35    # "sir":[I
    const/4 v4, 0x0

    aget v4, v35, v4

    sub-int v31, v31, v4

    .line 149
    const/4 v4, 0x1

    aget v4, v35, v4

    sub-int v21, v21, v4

    .line 150
    const/4 v4, 0x2

    aget v4, v35, v4

    sub-int/2addr v13, v4

    .line 152
    if-nez v43, :cond_8

    .line 153
    add-int v4, v42, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v41

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v39, v42

    .line 155
    :cond_8
    aget v4, v39, v42

    add-int v4, v4, v46

    aget v26, v3, v4

    .line 157
    .restart local v26    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x10

    aput v6, v35, v4

    .line 158
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v26

    shr-int/lit8 v6, v6, 0x8

    aput v6, v35, v4

    .line 159
    const/4 v4, 0x2

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    aput v6, v35, v4

    .line 161
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v30, v30, v4

    .line 162
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v20, v20, v4

    .line 163
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v12, v4

    .line 165
    add-int v33, v33, v30

    .line 166
    add-int v23, v23, v20

    .line 167
    add-int/2addr v15, v12

    .line 169
    add-int/lit8 v4, v37, 0x1

    rem-int v37, v4, v16

    .line 170
    rem-int v4, v37, v16

    aget-object v35, v36, v4

    .line 172
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v31, v31, v4

    .line 173
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v21, v21, v4

    .line 174
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v13, v4

    .line 176
    const/4 v4, 0x0

    aget v4, v35, v4

    sub-int v30, v30, v4

    .line 177
    const/4 v4, 0x1

    aget v4, v35, v4

    sub-int v20, v20, v4

    .line 178
    const/4 v4, 0x2

    aget v4, v35, v4

    sub-int/2addr v12, v4

    .line 180
    add-int/lit8 v44, v44, 0x1

    .line 135
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_6

    .line 182
    .end local v26    # "p":I
    .end local v35    # "sir":[I
    .end local v38    # "stackstart":I
    :cond_9
    add-int v46, v46, v5

    .line 111
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_3

    .line 184
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v15    # "bsum":I
    .end local v20    # "ginsum":I
    .end local v21    # "goutsum":I
    .end local v23    # "gsum":I
    .end local v30    # "rinsum":I
    .end local v31    # "routsum":I
    .end local v33    # "rsum":I
    .end local v37    # "stackpointer":I
    .end local v42    # "x":I
    :cond_a
    const/16 v42, 0x0

    .restart local v42    # "x":I
    :goto_7
    move/from16 v0, v42

    if-ge v0, v5, :cond_10

    .line 185
    const/4 v15, 0x0

    .restart local v15    # "bsum":I
    move/from16 v23, v15

    .restart local v23    # "gsum":I
    move/from16 v33, v15

    .restart local v33    # "rsum":I
    move v13, v15

    .restart local v13    # "boutsum":I
    move/from16 v21, v15

    .restart local v21    # "goutsum":I
    move/from16 v31, v15

    .restart local v31    # "routsum":I
    move v12, v15

    .restart local v12    # "binsum":I
    move/from16 v20, v15

    .restart local v20    # "ginsum":I
    move/from16 v30, v15

    .line 186
    .restart local v30    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v45, v4, v5

    .line 187
    .local v45, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v25, v0

    :goto_8
    move/from16 v0, v25

    move/from16 v1, p1

    if-gt v0, v1, :cond_d

    .line 188
    const/4 v4, 0x0

    move/from16 v0, v45

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v44, v4, v42

    .line 190
    add-int v4, v25, p1

    aget-object v35, v36, v4

    .line 192
    .restart local v35    # "sir":[I
    const/4 v4, 0x0

    aget v6, v27, v44

    aput v6, v35, v4

    .line 193
    const/4 v4, 0x1

    aget v6, v19, v44

    aput v6, v35, v4

    .line 194
    const/4 v4, 0x2

    aget v6, v11, v44

    aput v6, v35, v4

    .line 196
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v29, v28, v4

    .line 198
    .restart local v29    # "rbs":I
    aget v4, v27, v44

    mul-int v4, v4, v29

    add-int v33, v33, v4

    .line 199
    aget v4, v19, v44

    mul-int v4, v4, v29

    add-int v23, v23, v4

    .line 200
    aget v4, v11, v44

    mul-int v4, v4, v29

    add-int/2addr v15, v4

    .line 202
    if-lez v25, :cond_c

    .line 203
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v30, v30, v4

    .line 204
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v20, v20, v4

    .line 205
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v12, v4

    .line 212
    :goto_9
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 213
    add-int v45, v45, v5

    .line 187
    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 207
    :cond_c
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v31, v31, v4

    .line 208
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v21, v21, v4

    .line 209
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v13, v4

    goto :goto_9

    .line 216
    .end local v29    # "rbs":I
    .end local v35    # "sir":[I
    :cond_d
    move/from16 v44, v42

    .line 217
    move/from16 v37, p1

    .line 218
    .restart local v37    # "stackpointer":I
    const/16 v43, 0x0

    :goto_a
    move/from16 v0, v43

    if-ge v0, v9, :cond_f

    .line 220
    const/high16 v4, -0x1000000

    aget v6, v3, v44

    and-int/2addr v4, v6

    aget v6, v18, v33

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v18, v23

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v18, v15

    or-int/2addr v4, v6

    aput v4, v3, v44

    .line 222
    sub-int v33, v33, v31

    .line 223
    sub-int v23, v23, v21

    .line 224
    sub-int/2addr v15, v13

    .line 226
    sub-int v4, v37, p1

    add-int v38, v4, v16

    .line 227
    .restart local v38    # "stackstart":I
    rem-int v4, v38, v16

    aget-object v35, v36, v4

    .line 229
    .restart local v35    # "sir":[I
    const/4 v4, 0x0

    aget v4, v35, v4

    sub-int v31, v31, v4

    .line 230
    const/4 v4, 0x1

    aget v4, v35, v4

    sub-int v21, v21, v4

    .line 231
    const/4 v4, 0x2

    aget v4, v35, v4

    sub-int/2addr v13, v4

    .line 233
    if-nez v42, :cond_e

    .line 234
    add-int v4, v43, v28

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v39, v43

    .line 236
    :cond_e
    aget v4, v39, v43

    add-int v26, v42, v4

    .line 238
    .restart local v26    # "p":I
    const/4 v4, 0x0

    aget v6, v27, v26

    aput v6, v35, v4

    .line 239
    const/4 v4, 0x1

    aget v6, v19, v26

    aput v6, v35, v4

    .line 240
    const/4 v4, 0x2

    aget v6, v11, v26

    aput v6, v35, v4

    .line 242
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v30, v30, v4

    .line 243
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v20, v20, v4

    .line 244
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v12, v4

    .line 246
    add-int v33, v33, v30

    .line 247
    add-int v23, v23, v20

    .line 248
    add-int/2addr v15, v12

    .line 250
    add-int/lit8 v4, v37, 0x1

    rem-int v37, v4, v16

    .line 251
    aget-object v35, v36, v37

    .line 253
    const/4 v4, 0x0

    aget v4, v35, v4

    add-int v31, v31, v4

    .line 254
    const/4 v4, 0x1

    aget v4, v35, v4

    add-int v21, v21, v4

    .line 255
    const/4 v4, 0x2

    aget v4, v35, v4

    add-int/2addr v13, v4

    .line 257
    const/4 v4, 0x0

    aget v4, v35, v4

    sub-int v30, v30, v4

    .line 258
    const/4 v4, 0x1

    aget v4, v35, v4

    sub-int v20, v20, v4

    .line 259
    const/4 v4, 0x2

    aget v4, v35, v4

    sub-int/2addr v12, v4

    .line 261
    add-int v44, v44, v5

    .line 218
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_a

    .line 184
    .end local v26    # "p":I
    .end local v35    # "sir":[I
    .end local v38    # "stackstart":I
    :cond_f
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_7

    .line 265
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v15    # "bsum":I
    .end local v20    # "ginsum":I
    .end local v21    # "goutsum":I
    .end local v23    # "gsum":I
    .end local v30    # "rinsum":I
    .end local v31    # "routsum":I
    .end local v33    # "rsum":I
    .end local v37    # "stackpointer":I
    .end local v45    # "yp":I
    :cond_10
    if-eqz p2, :cond_11

    .line 266
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v34

    .line 268
    .local v34, "shadowBright":I
    const/16 v47, 0x0

    .local v47, "z":I
    :goto_b
    array-length v4, v3

    move/from16 v0, v47

    if-ge v0, v4, :cond_11

    .line 272
    aget v4, v3, v47

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v10, v4, 0xff

    .line 273
    .local v10, "as":I
    aget v4, v3, v47

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v0, v4, 0xff

    move/from16 v32, v0

    .line 274
    .local v32, "rs":I
    aget v4, v3, v47

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    .line 275
    .local v22, "gs":I
    aget v4, v3, v47

    shr-int/lit8 v4, v4, 0x0

    and-int/lit16 v14, v4, 0xff

    .line 277
    .local v14, "bs":I
    sub-int v4, v34, v32

    int-to-float v4, v4

    mul-float v4, v4, p4

    float-to-int v4, v4

    add-int v32, v32, v4

    .line 278
    sub-int v4, v34, v22

    int-to-float v4, v4

    mul-float v4, v4, p4

    float-to-int v4, v4

    add-int v22, v22, v4

    .line 279
    sub-int v4, v34, v14

    int-to-float v4, v4

    mul-float v4, v4, p4

    float-to-int v4, v4

    add-int/2addr v14, v4

    .line 281
    shl-int/lit8 v4, v10, 0x18

    shl-int/lit8 v6, v32, 0x10

    or-int/2addr v4, v6

    shl-int/lit8 v6, v22, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v14

    aput v4, v3, v47

    .line 268
    add-int/lit8 v47, v47, 0x1

    goto :goto_b

    .line 285
    .end local v10    # "as":I
    .end local v14    # "bs":I
    .end local v22    # "gs":I
    .end local v32    # "rs":I
    .end local v34    # "shadowBright":I
    .end local v47    # "z":I
    :cond_11
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method public static applyBlurring(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    const/16 v0, 0x55

    const/4 v1, 0x1

    const v2, 0x3f733333    # 0.95f

    const v3, 0x3e6b851f    # 0.23f

    invoke-static {p0, v0, v1, v2, v3}, Lcom/biznessapps/utils/BlurEffectUtils;->addBlurEffect(Landroid/graphics/Bitmap;IZFF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static convertToMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "imgIn"    # Landroid/graphics/Bitmap;

    .prologue
    .line 294
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v7, "file":Ljava/io/File;
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v10, v7, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v10, "randomAccessFile":Ljava/io/RandomAccessFile;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 303
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 304
    .local v8, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    .line 308
    .local v11, "type":Landroid/graphics/Bitmap$Config;
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 309
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int/2addr v4, v8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 310
    .local v9, "map":Ljava/nio/MappedByteBuffer;
    invoke-virtual {p0, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 312
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 316
    invoke-static {v12, v8, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    invoke-virtual {p0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 321
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 322
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 325
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "height":I
    .end local v9    # "map":Ljava/nio/MappedByteBuffer;
    .end local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v11    # "type":Landroid/graphics/Bitmap$Config;
    .end local v12    # "width":I
    :goto_0
    return-object p0

    .line 327
    :catch_0
    move-exception v6

    .line 328
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 330
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

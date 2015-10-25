.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 30
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v6

    .line 52
    .local v6, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/16 v26, 0x0

    .line 53
    .local v26, "totalBlocks":I
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v5

    .line 54
    .local v5, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v3, v5

    .local v3, "arr$":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_0

    aget-object v4, v3, v8

    .line 55
    .local v4, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v27

    add-int v26, v26, v27

    .line 54
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    :cond_0
    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v23, v0

    .line 60
    .local v23, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/16 v19, 0x0

    .line 61
    .local v19, "numResultBlocks":I
    move-object v3, v5

    array-length v12, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_2

    aget-object v4, v3, v8

    .line 62
    .restart local v4    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_1

    .line 63
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v17

    .line 64
    .local v17, "numDataCodewords":I
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v27

    add-int v16, v27, v17

    .line 65
    .local v16, "numBlockCodewords":I
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "numResultBlocks":I
    .local v20, "numResultBlocks":I
    new-instance v27, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v27, v23, v19

    .line 62
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v20

    .end local v20    # "numResultBlocks":I
    .restart local v19    # "numResultBlocks":I
    goto :goto_2

    .line 61
    .end local v16    # "numBlockCodewords":I
    .end local v17    # "numDataCodewords":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 72
    .end local v4    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v7    # "i":I
    :cond_2
    const/16 v27, 0x0

    aget-object v27, v23, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v14, v0

    .line 75
    .local v14, "longerBlocksTotalCodewords":I
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v27

    sub-int v13, v14, v27

    .line 76
    .local v13, "longerBlocksNumDataCodewords":I
    add-int/lit8 v24, v13, -0x1

    .line 79
    .local v24, "shorterBlocksNumDataCodewords":I
    const/16 v21, 0x0

    .line 80
    .local v21, "rawCodewordsOffset":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    move/from16 v0, v24

    if-ge v7, v0, :cond_4

    .line 81
    const/4 v10, 0x0

    .local v10, "j":I
    move/from16 v22, v21

    .end local v21    # "rawCodewordsOffset":I
    .local v22, "rawCodewordsOffset":I
    :goto_4
    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 82
    aget-object v27, v23, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v27, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "rawCodewordsOffset":I
    .restart local v21    # "rawCodewordsOffset":I
    aget-byte v28, p0, v22

    aput-byte v28, v27, v7

    .line 81
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    goto :goto_4

    .line 80
    :cond_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v21, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v21    # "rawCodewordsOffset":I
    goto :goto_3

    .line 87
    .end local v10    # "j":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v27

    const/16 v28, 0x18

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    const/16 v25, 0x1

    .line 88
    .local v25, "specialVersion":Z
    :goto_5
    if-eqz v25, :cond_6

    const/16 v18, 0x8

    .line 89
    .local v18, "numLongerBlocks":I
    :goto_6
    const/4 v10, 0x0

    .restart local v10    # "j":I
    move/from16 v22, v21

    .end local v21    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    :goto_7
    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 90
    aget-object v27, v23, v10

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v27, v0

    add-int/lit8 v28, v13, -0x1

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "rawCodewordsOffset":I
    .restart local v21    # "rawCodewordsOffset":I
    aget-byte v29, p0, v22

    aput-byte v29, v27, v28

    .line 89
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    goto :goto_7

    .line 87
    .end local v10    # "j":I
    .end local v18    # "numLongerBlocks":I
    .end local v22    # "rawCodewordsOffset":I
    .end local v25    # "specialVersion":Z
    .restart local v21    # "rawCodewordsOffset":I
    :cond_5
    const/16 v25, 0x0

    goto :goto_5

    .restart local v25    # "specialVersion":Z
    :cond_6
    move/from16 v18, v19

    .line 88
    goto :goto_6

    .line 94
    .end local v21    # "rawCodewordsOffset":I
    .restart local v10    # "j":I
    .restart local v18    # "numLongerBlocks":I
    .restart local v22    # "rawCodewordsOffset":I
    :cond_7
    const/16 v27, 0x0

    aget-object v27, v23, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v15, v0

    .line 95
    .local v15, "max":I
    move v7, v13

    move/from16 v21, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v21    # "rawCodewordsOffset":I
    :goto_8
    if-ge v7, v15, :cond_b

    .line 96
    const/4 v10, 0x0

    move/from16 v22, v21

    .end local v21    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    :goto_9
    move/from16 v0, v19

    if-ge v10, v0, :cond_a

    .line 97
    if-eqz v25, :cond_8

    add-int/lit8 v27, v10, 0x8

    rem-int v11, v27, v19

    .line 98
    .local v11, "jOffset":I
    :goto_a
    if-eqz v25, :cond_9

    const/16 v27, 0x7

    move/from16 v0, v27

    if-le v11, v0, :cond_9

    add-int/lit8 v9, v7, -0x1

    .line 99
    .local v9, "iOffset":I
    :goto_b
    aget-object v27, v23, v11

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v27, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "rawCodewordsOffset":I
    .restart local v21    # "rawCodewordsOffset":I
    aget-byte v28, p0, v22

    aput-byte v28, v27, v9

    .line 96
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "rawCodewordsOffset":I
    .restart local v22    # "rawCodewordsOffset":I
    goto :goto_9

    .end local v9    # "iOffset":I
    .end local v11    # "jOffset":I
    :cond_8
    move v11, v10

    .line 97
    goto :goto_a

    .restart local v11    # "jOffset":I
    :cond_9
    move v9, v7

    .line 98
    goto :goto_b

    .line 95
    .end local v11    # "jOffset":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v21, v22

    .end local v22    # "rawCodewordsOffset":I
    .restart local v21    # "rawCodewordsOffset":I
    goto :goto_8

    .line 103
    :cond_b
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    .line 104
    new-instance v27, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v27 .. v27}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v27

    .line 107
    :cond_c
    return-object v23
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method

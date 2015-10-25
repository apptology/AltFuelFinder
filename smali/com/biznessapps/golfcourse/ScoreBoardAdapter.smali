.class public Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
.super Lcom/biznessapps/golfcourse/SmartTableViewAdapter;
.source "ScoreBoardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/golfcourse/ScoreBoardAdapter$1;,
        Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;,
        Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    }
.end annotation


# static fields
.field private static final HOLE_NUMBER_OF_FIGURES:I = 0x2

.field public static titleIn:Ljava/lang/String;

.field public static titleNetTotal:Ljava/lang/String;

.field public static titleOut:Ljava/lang/String;

.field public static titleTotal:Ljava/lang/String;


# instance fields
.field private mColumnCount:I

.field private mGame:Lcom/biznessapps/golfcourse/model/Game;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biznessapps/golfcourse/model/Game;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "game"    # Lcom/biznessapps/golfcourse/model/Game;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/SmartTableViewAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->in:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleIn:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->out:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleOut:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->total:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleTotal:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->net_total:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleNetTotal:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private fillContentCell(Landroid/view/View;IILcom/biznessapps/golfcourse/model/PlayerScore;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I
    .param p3, "colIdx"    # I
    .param p4, "playerScore"    # Lcom/biznessapps/golfcourse/model/PlayerScore;

    .prologue
    .line 263
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getHoleFromColumnIndex(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v4

    .line 264
    .local v4, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    iget v0, v4, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/golfcourse/model/Score;

    .line 266
    .local v8, "scoreObj":Lcom/biznessapps/golfcourse/model/Score;
    sget v15, Lcom/biznessapps/layout/R$id;->vgItem:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 267
    .local v13, "vgItem":Landroid/view/ViewGroup;
    sget v15, Lcom/biznessapps/layout/R$id;->llMainValue:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 268
    .local v14, "vgMain":Landroid/view/ViewGroup;
    sget v15, Lcom/biznessapps/layout/R$id;->tvValue:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 269
    .local v10, "tvValue":Landroid/widget/TextView;
    sget v15, Lcom/biznessapps/layout/R$id;->ivDivider:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 270
    .local v6, "ivDivider":Landroid/widget/ImageView;
    sget v15, Lcom/biznessapps/layout/R$id;->tvValue1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 271
    .local v11, "tvValue1":Landroid/widget/TextView;
    sget v15, Lcom/biznessapps/layout/R$id;->tvValue2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 272
    .local v12, "tvValue2":Landroid/widget/TextView;
    sget v15, Lcom/biznessapps/layout/R$id;->tvExtendValue:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 274
    .local v9, "tvExtendedValue":Landroid/widget/TextView;
    move-object/from16 v0, p4

    iget-boolean v15, v0, Lcom/biznessapps/golfcourse/model/PlayerScore;->isExtended:Z

    if-eqz v15, :cond_0

    .line 275
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    :goto_0
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 281
    const/4 v15, 0x4

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    const/4 v15, -0x1

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 284
    sget v15, Lcom/biznessapps/layout/R$color;->golf_cell_grey_bg:I

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    if-eqz v8, :cond_6

    .line 287
    iget v7, v8, Lcom/biznessapps/golfcourse/model/Score;->score:I

    .line 288
    .local v7, "score":I
    iget v5, v4, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    .line 291
    .local v5, "holePar":I
    sub-int v3, v5, v7

    .line 293
    .local v3, "diff":I
    if-nez v3, :cond_1

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/biznessapps/layout/R$color;->score_par:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 305
    .local v2, "color":I
    :goto_1
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 306
    const/4 v15, -0x1

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget v15, v4, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScoreAsString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    iget v0, v4, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/biznessapps/golfcourse/model/Score;

    iget v15, v15, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .end local v2    # "color":I
    .end local v3    # "diff":I
    .end local v5    # "holePar":I
    .end local v7    # "score":I
    :goto_2
    return-void

    .line 277
    :cond_0
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 295
    .restart local v3    # "diff":I
    .restart local v5    # "holePar":I
    .restart local v7    # "score":I
    :cond_1
    const/4 v15, 0x1

    if-ne v3, v15, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/biznessapps/layout/R$color;->score_birdie1:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .restart local v2    # "color":I
    goto :goto_1

    .line 297
    .end local v2    # "color":I
    :cond_2
    const/4 v15, 0x1

    if-le v3, v15, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/biznessapps/layout/R$color;->score_birdie2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .restart local v2    # "color":I
    goto :goto_1

    .line 299
    .end local v2    # "color":I
    :cond_3
    const/4 v15, -0x1

    if-ne v3, v15, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/biznessapps/layout/R$color;->score_bogey1:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .restart local v2    # "color":I
    goto :goto_1

    .line 302
    .end local v2    # "color":I
    :cond_4
    const/4 v15, -0x1

    if-ge v3, v15, :cond_5

    const/4 v15, 0x1

    :goto_3
    invoke-static {v15}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/biznessapps/layout/R$color;->score_bogey2:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .restart local v2    # "color":I
    goto/16 :goto_1

    .line 302
    .end local v2    # "color":I
    :cond_5
    const/4 v15, 0x0

    goto :goto_3

    .line 312
    .end local v3    # "diff":I
    .end local v5    # "holePar":I
    .end local v7    # "score":I
    :cond_6
    const/4 v15, -0x1

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 313
    const-string v15, ""

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const-string v15, ""

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const-string v15, ""

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private fillEmptyContentCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I
    .param p3, "colIdx"    # I
    .param p4, "colType"    # Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .prologue
    .line 380
    sget v5, Lcom/biznessapps/layout/R$id;->vgItem:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 381
    .local v4, "vgItem":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->ivDivider:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 382
    .local v0, "ivDivider":Landroid/widget/ImageView;
    sget v5, Lcom/biznessapps/layout/R$id;->tvValue1:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 383
    .local v2, "tvValue1":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->tvValue2:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 384
    .local v3, "tvValue2":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->tvExtendValue:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 386
    .local v1, "tvExtendedValue":Landroid/widget/TextView;
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    sget-object v5, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_CONTENT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    if-ne p4, v5, :cond_0

    .line 391
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 392
    sget v5, Lcom/biznessapps/layout/R$color;->golf_cell_grey_bg:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    :cond_0
    return-void
.end method

.method private fillHandicapRowCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I
    .param p3, "colIdx"    # I
    .param p4, "rowType"    # Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    .param p5, "colType"    # Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .prologue
    const/4 v7, 0x0

    .line 233
    invoke-virtual {p0, p3}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getHoleFromColumnIndex(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v0

    .line 235
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    sget v5, Lcom/biznessapps/layout/R$id;->llMainValue:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 236
    .local v4, "vgMain":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->tvValue:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 238
    .local v2, "tvValue":Landroid/widget/TextView;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    sget-object v5, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$1;->$SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType:[I

    invoke-virtual {p5}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 258
    const-string v5, "None reachable case"

    invoke-static {v5, v7}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 260
    :goto_0
    return-void

    .line 245
    :pswitch_0
    sget v5, Lcom/biznessapps/layout/R$id;->vgItem:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 246
    .local v3, "vgItem":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->ivDivider:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 248
    .local v1, "ivDivider":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$color;->golf_cell_grey_bg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 249
    sget v5, Lcom/biznessapps/layout/R$color;->white:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    .end local v1    # "ivDivider":Landroid/widget/ImageView;
    .end local v3    # "vgItem":Landroid/view/ViewGroup;
    :pswitch_1
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget v5, v0, Lcom/biznessapps/golfcourse/model/Hole;->handicap:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillParRowCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I
    .param p3, "colIdx"    # I
    .param p4, "rowType"    # Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    .param p5, "colType"    # Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .prologue
    const/4 v8, 0x0

    .line 197
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    .line 198
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    invoke-virtual {p0, p3}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getHoleFromColumnIndex(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    .line 200
    .local v1, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    sget v6, Lcom/biznessapps/layout/R$id;->vgItem:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 201
    .local v4, "vgItem":Landroid/view/ViewGroup;
    sget v6, Lcom/biznessapps/layout/R$id;->llMainValue:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 202
    .local v5, "vgMain":Landroid/view/ViewGroup;
    sget v6, Lcom/biznessapps/layout/R$id;->tvValue:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 203
    .local v3, "tvValue":Landroid/widget/TextView;
    sget v6, Lcom/biznessapps/layout/R$id;->ivDivider:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 205
    .local v2, "ivDivider":Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    sget-object v6, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$1;->$SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType:[I

    invoke-virtual {p5}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 227
    const-string v6, "None reachable case"

    invoke-static {v6, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 229
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getTotalOutPars()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getTotalInPars()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$color;->golf_cell_grey_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 220
    sget v6, Lcom/biznessapps/layout/R$color;->white:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->getTotalPars()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget v6, v1, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private fillTotalColumnCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;Lcom/biznessapps/golfcourse/model/Player;Lcom/biznessapps/golfcourse/model/PlayerScore;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I
    .param p3, "colIdx"    # I
    .param p4, "colType"    # Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    .param p5, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .param p6, "playerScore"    # Lcom/biznessapps/golfcourse/model/PlayerScore;

    .prologue
    .line 321
    sget v7, Lcom/biznessapps/layout/R$id;->vgItem:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 322
    .local v5, "vgItem":Landroid/view/ViewGroup;
    sget v7, Lcom/biznessapps/layout/R$id;->llMainValue:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 323
    .local v6, "vgMain":Landroid/view/ViewGroup;
    sget v7, Lcom/biznessapps/layout/R$id;->tvValue:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 324
    .local v2, "tvValue":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->ivDivider:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 325
    .local v0, "ivDivider":Landroid/widget/ImageView;
    sget v7, Lcom/biznessapps/layout/R$id;->tvValue1:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 326
    .local v3, "tvValue1":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->tvValue2:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    .local v4, "tvValue2":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->tvExtendValue:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 329
    .local v1, "tvExtendedValue":Landroid/widget/TextView;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-boolean v7, p6, Lcom/biznessapps/golfcourse/model/PlayerScore;->isExtended:Z

    if-eqz v7, :cond_1

    .line 333
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :goto_0
    const-string v7, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    sget-object v7, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$1;->$SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$ColType:[I

    invoke-virtual {p4}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 375
    const-string v7, "None reachable case"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 377
    :cond_0
    :goto_1
    return-void

    .line 335
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 343
    :pswitch_0
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleOutScoreCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 344
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 345
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleOutScores()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleInScoreAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalPutts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 351
    :pswitch_1
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleInScoreCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 352
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 353
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleInScores()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleOutScoreAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleInPutts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 360
    :pswitch_2
    iget-object v7, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$color;->golf_cell_grey_bg:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 361
    sget v7, Lcom/biznessapps/layout/R$color;->white:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleScoreCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 364
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 365
    sget-object v7, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    if-ne p4, v7, :cond_2

    .line 366
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalScores()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_2
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalHoleScoreAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalPutts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 368
    :cond_2
    invoke-virtual {p6}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getTotalScores()I

    move-result v7

    iget v8, p5, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getColType(Ljava/lang/String;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    .locals 2
    .param p1, "colHeaderValue"    # Ljava/lang/String;

    .prologue
    .line 425
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_CONTENT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 428
    .local v0, "colType":Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleOut:Ljava/lang/String;

    if-ne p1, v1, :cond_1

    .line 429
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL_OUT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 430
    :cond_1
    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleIn:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    .line 431
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL_IN:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    goto :goto_0

    .line 432
    :cond_2
    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleTotal:Ljava/lang/String;

    if-ne p1, v1, :cond_3

    .line 433
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    goto :goto_0

    .line 434
    :cond_3
    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleNetTotal:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 435
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_NET_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    goto :goto_0
.end method

.method private getRowType(I)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    .locals 1
    .param p1, "rowIdx"    # I

    .prologue
    .line 409
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_PLAYER:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    .line 410
    .local v0, "rowType":Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_0
    return-object v0

    .line 412
    :pswitch_0
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_PAR:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    .line 413
    goto :goto_0

    .line 415
    :pswitch_1
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_HANDICAP:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    .line 416
    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getColumnCount()I
    .locals 2

    .prologue
    .line 72
    iget v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mColumnCount:I

    if-eqz v1, :cond_0

    .line 73
    iget v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mColumnCount:I

    .line 83
    :goto_0
    return v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Course;->getHoleList()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 77
    .local v0, "holeCount":I
    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mColumnCount:I

    .line 83
    :goto_1
    iget v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mColumnCount:I

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mColumnCount:I

    goto :goto_1
.end method

.method public getContentView(Landroid/view/View;II)Landroid/view/View;
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I
    .param p3, "colIdx"    # I

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/biznessapps/layout/R$layout;->golf_course_board_content_item_layout:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 156
    :cond_0
    sget v5, Lcom/biznessapps/layout/R$id;->tvSizeAdjuster:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 159
    .local v19, "tvSizeAdjuster":Landroid/widget/TextView;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getFrozenRowHeaderItemString(I)Ljava/lang/String;

    move-result-object v18

    .line 160
    .local v18, "colHeaderValue":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 161
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getRowType(I)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    move-result-object v9

    .line 166
    .local v9, "rowType":Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getColType(Ljava/lang/String;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    move-result-object v10

    .line 168
    .local v10, "colType":Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    sget-object v5, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$1;->$SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType:[I

    invoke-virtual {v9}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 192
    :goto_0
    return-object p1

    :pswitch_0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 170
    invoke-direct/range {v5 .. v10}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->fillParRowCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 173
    invoke-direct/range {v5 .. v10}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->fillHandicapRowCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;)V

    goto :goto_0

    .line 176
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getPlayerFromRowIndex(I)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v16

    .line 177
    .local v16, "player":Lcom/biznessapps/golfcourse/model/Player;
    if-eqz v16, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v5, v5, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 180
    .local v17, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    if-eqz v17, :cond_4

    .line 181
    sget-object v5, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_CONTENT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    if-ne v10, v5, :cond_3

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->fillContentCell(Landroid/view/View;IILcom/biznessapps/golfcourse/model/PlayerScore;)V

    goto :goto_0

    .line 177
    .end local v17    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .restart local v17    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v10

    .line 184
    invoke-direct/range {v11 .. v17}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->fillTotalColumnCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;Lcom/biznessapps/golfcourse/model/Player;Lcom/biznessapps/golfcourse/model/PlayerScore;)V

    goto :goto_0

    .line 187
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->fillEmptyContentCell(Landroid/view/View;IILcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFrozenColumnHeaderItemView(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rowIdx"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 97
    if-nez p1, :cond_0

    .line 98
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    sget v9, Lcom/biznessapps/layout/R$layout;->golf_course_board_frozen_column_header_item_layout:I

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 101
    :cond_0
    invoke-direct {p0, p2}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getRowType(I)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    move-result-object v4

    .line 103
    .local v4, "rowType":Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    sget v6, Lcom/biznessapps/layout/R$id;->tvValue:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 104
    .local v5, "tvValue":Landroid/widget/TextView;
    sget v6, Lcom/biznessapps/layout/R$id;->tvExtendValue:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "mTVExtendValue":Landroid/widget/TextView;
    sget v6, Lcom/biznessapps/layout/R$id;->ivMark:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .local v0, "mIVMark":Landroid/widget/ImageView;
    sget v6, Lcom/biznessapps/layout/R$string;->putts:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    sget-object v6, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$1;->$SwitchMap$com$biznessapps$golfcourse$ScoreBoardAdapter$RowType:[I

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    .line 133
    :goto_0
    return-object p1

    .line 113
    :pswitch_0
    sget v6, Lcom/biznessapps/layout/R$string;->par:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :pswitch_1
    sget v6, Lcom/biznessapps/layout/R$string;->handicap:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getPlayerFromRowIndex(I)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v2

    .line 124
    .local v2, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v6, v6, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 125
    .local v3, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    if-eqz v3, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 127
    iget-object v6, v2, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-boolean v6, v3, Lcom/biznessapps/golfcourse/model/PlayerScore;->isExtended:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 125
    goto :goto_1

    :cond_2
    move v6, v8

    .line 128
    goto :goto_2

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFrozenCrossHeaderItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/biznessapps/layout/R$layout;->golf_course_board_frozen_cross_header_item_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 92
    :cond_0
    return-object p1
.end method

.method public getFrozenRowHeaderItemString(I)Ljava/lang/String;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x9

    .line 442
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getColumnCount()I

    move-result v2

    .line 443
    .local v2, "mColumnCount":I
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    .line 448
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    add-int/lit8 v2, v2, -0x1

    .line 449
    add-int/lit8 v4, v2, -0x1

    if-ne p1, v4, :cond_0

    .line 451
    sget-object v3, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleNetTotal:Ljava/lang/String;

    .line 479
    .local v3, "value":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_7

    :goto_1
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 481
    return-object v3

    .line 452
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v2, -0x2

    if-ne p1, v4, :cond_1

    .line 454
    sget-object v3, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleTotal:Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 457
    if-ge p1, v7, :cond_2

    .line 459
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    .line 460
    .local v1, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v4, v1, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 461
    .end local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    if-ne p1, v7, :cond_3

    .line 463
    sget-object v3, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleOut:Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    if-le p1, v7, :cond_4

    const/16 v4, 0x12

    if-gt p1, v4, :cond_4

    .line 466
    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    .line 467
    .restart local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v4, v1, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 470
    .end local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x13

    if-ne p1, v4, :cond_5

    move v4, v5

    :goto_2
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 471
    sget-object v3, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->titleIn:Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    move v4, v6

    .line 470
    goto :goto_2

    .line 475
    :cond_6
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    .line 476
    .restart local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget v4, v1, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    :cond_7
    move v5, v6

    .line 479
    goto :goto_1
.end method

.method public getFrozenRowHeaderItemView(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/biznessapps/layout/R$layout;->golf_course_board_frozen_row_header_item_layout:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 142
    :cond_0
    sget v2, Lcom/biznessapps/layout/R$id;->tvValue:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, "tvValue":Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getFrozenRowHeaderItemString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object p1
.end method

.method public getHoleFromColumnIndex(I)Lcom/biznessapps/golfcourse/model/Hole;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x9

    .line 485
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getColumnCount()I

    move-result v2

    .line 486
    .local v2, "mColumnCount":I
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    .line 487
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    const/4 v1, 0x0

    .line 490
    .local v1, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    add-int/lit8 v2, v2, -0x1

    .line 491
    if-ge p1, v2, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Course;->isGoBackableCourse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    if-ge p1, v4, :cond_1

    .line 495
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    .line 506
    :cond_0
    :goto_0
    return-object v1

    .line 496
    :cond_1
    if-le p1, v4, :cond_0

    const/16 v3, 0x12

    if-gt p1, v3, :cond_0

    .line 498
    invoke-virtual {v0, p1}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    goto :goto_0

    .line 502
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v1

    goto :goto_0
.end method

.method public getPlayerFromRowIndex(I)Lcom/biznessapps/golfcourse/model/Player;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 401
    add-int/lit8 v1, p1, -0x2

    .line 402
    .local v1, "playerIndex":I
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 403
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v0

    .line 405
    .local v0, "player":Lcom/biznessapps/golfcourse/model/Player;
    return-object v0

    .end local v0    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v1    # "playerIndex":I
    :cond_0
    move v2, v4

    .line 398
    goto :goto_0

    .restart local v1    # "playerIndex":I
    :cond_1
    move v3, v4

    .line 402
    goto :goto_1
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->mGame:Lcom/biznessapps/golfcourse/model/Game;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Game;->getPlayerCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

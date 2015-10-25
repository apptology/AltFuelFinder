.class public Lcom/biznessapps/golfcourse/model/PlayerScore;
.super Ljava/lang/Object;
.source "PlayerScore.java"


# instance fields
.field public gameId:J

.field public holeScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/biznessapps/golfcourse/model/Score;",
            ">;"
        }
    .end annotation
.end field

.field public isExtended:Z

.field public playerId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->isExtended:Z

    return-void
.end method


# virtual methods
.method public getHoleScore(I)I
    .locals 1
    .param p1, "holeNumber"    # I

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScore(II)I

    move-result v0

    return v0
.end method

.method public getHoleScore(II)I
    .locals 8
    .param p1, "startHoleNumber"    # I
    .param p2, "endHoleNumber"    # I

    .prologue
    .line 130
    if-gt p1, p2, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 132
    iget-wide v6, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->gameId:J

    invoke-static {v6, v7}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v1

    .line 133
    .local v1, "game":Lcom/biznessapps/golfcourse/model/Game;
    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    .line 135
    .local v0, "course":Lcom/biznessapps/golfcourse/model/Course;
    const/4 v3, 0x0

    .line 136
    .local v3, "holeScore":I
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-gt v4, p2, :cond_2

    .line 137
    invoke-virtual {v0, v4}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v2

    .line 138
    .local v2, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    iget-object v6, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/golfcourse/model/Score;

    .line 139
    .local v5, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v5, :cond_1

    .line 136
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .end local v1    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .end local v2    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v3    # "holeScore":I
    .end local v4    # "i":I
    .end local v5    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 142
    .restart local v0    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .restart local v1    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .restart local v2    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .restart local v3    # "holeScore":I
    .restart local v4    # "i":I
    .restart local v5    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    iget v6, v5, Lcom/biznessapps/golfcourse/model/Score;->score:I

    iget v7, v2, Lcom/biznessapps/golfcourse/model/Hole;->par:I

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    goto :goto_2

    .line 145
    .end local v2    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    .end local v5    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_2
    return v3
.end method

.method public getHoleScoreAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "holeNumber"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScoreAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHoleScoreAsString(II)Ljava/lang/String;
    .locals 4
    .param p1, "startHoleNumber"    # I
    .param p2, "endHoleNumber"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScore(II)I

    move-result v0

    .line 168
    .local v0, "holeScore":I
    if-lez v0, :cond_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "holeScoreStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 170
    .end local v1    # "holeScoreStr":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 171
    const-string v1, "E"

    .restart local v1    # "holeScoreStr":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v1    # "holeScoreStr":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "holeScoreStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTotalHoleInPutts()I
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "putts":I
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x12

    if-gt v0, v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Score;

    .line 106
    .local v2, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v2, :cond_0

    .line 104
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget v3, v2, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 111
    .end local v2    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v1
.end method

.method public getTotalHoleInScoreAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x1

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScoreAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalHoleInScoreCount()I
    .locals 4

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "counts":I
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x12

    if-gt v1, v3, :cond_1

    .line 35
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Score;

    .line 36
    .local v2, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v2, :cond_0

    .line 34
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    .end local v2    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v0
.end method

.method public getTotalHoleInScores()I
    .locals 4

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "scores":I
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x12

    if-gt v0, v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Score;

    .line 71
    .local v1, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v1, :cond_0

    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget v3, v1, Lcom/biznessapps/golfcourse/model/Score;->score:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 76
    .end local v1    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v2
.end method

.method public getTotalHoleOutPutts()I
    .locals 4

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "putts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Score;

    .line 94
    .local v2, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v2, :cond_0

    .line 92
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget v3, v2, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 99
    .end local v2    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v1
.end method

.method public getTotalHoleOutScoreAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    const/16 v0, 0xa

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScoreAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalHoleOutScoreCount()I
    .locals 4

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "counts":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_1

    .line 23
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Score;

    .line 24
    .local v2, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v2, :cond_0

    .line 22
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    .end local v2    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v0
.end method

.method public getTotalHoleOutScores()I
    .locals 4

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "scores":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Score;

    .line 60
    .local v1, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v1, :cond_0

    .line 58
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget v3, v1, Lcom/biznessapps/golfcourse/model/Score;->score:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 64
    .end local v1    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v2
.end method

.method public getTotalHoleScoreAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x1

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/golfcourse/model/PlayerScore;->getHoleScoreAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalHoleScoreCount()I
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "counts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Score;

    .line 48
    .local v2, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v2, :cond_0

    .line 46
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v2    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v0
.end method

.method public getTotalPutts()I
    .locals 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "putts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/Score;

    .line 118
    .local v2, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v2, :cond_0

    .line 116
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    iget v3, v2, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    add-int/2addr v1, v3

    goto :goto_1

    .line 122
    .end local v2    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v1
.end method

.method public getTotalScores()I
    .locals 4

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "scores":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Score;

    .line 83
    .local v1, "score":Lcom/biznessapps/golfcourse/model/Score;
    if-nez v1, :cond_0

    .line 81
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget v3, v1, Lcom/biznessapps/golfcourse/model/Score;->score:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 87
    .end local v1    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    return v2
.end method

.class public Lcom/biznessapps/golfcourse/model/Game;
.super Ljava/lang/Object;
.source "Game.java"


# static fields
.field private static mGameMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/biznessapps/golfcourse/model/Game;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public courseId:J

.field public endDate:J

.field public id:J

.field public isFinished:Z

.field private mCourse:Lcom/biznessapps/golfcourse/model/Course;

.field public notes:Ljava/lang/String;

.field public playerIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public recentHoleNumber:I

.field public scores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/biznessapps/golfcourse/model/Player;",
            "Lcom/biznessapps/golfcourse/model/PlayerScore;",
            ">;"
        }
    .end annotation
.end field

.field public startDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v2, p0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    .line 24
    iput-wide v2, p0, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    .line 38
    iput v1, p0, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    .line 41
    iput-boolean v1, p0, Lcom/biznessapps/golfcourse/model/Game;->isFinished:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    .line 85
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 81
    return-void
.end method

.method public static deleteGame(J)Z
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, "result":Z
    invoke-static {p0, p1}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v1

    .line 61
    .local v1, "game":Lcom/biznessapps/golfcourse/model/Game;
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deleteGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 66
    :goto_0
    sget-object v3, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 68
    return v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deletePlayerFromGames(J)V
    .locals 4
    .param p0, "playerId"    # J

    .prologue
    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    sget-object v2, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Game;

    .line 75
    .local v0, "game":Lcom/biznessapps/golfcourse/model/Game;
    invoke-virtual {v0, p0, p1}, Lcom/biznessapps/golfcourse/model/Game;->deletePlayer(J)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "game":Lcom/biznessapps/golfcourse/model/Game;
    :cond_0
    return-void
.end method

.method public static getGame(J)Lcom/biznessapps/golfcourse/model/Game;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 47
    sget-object v1, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Game;

    .line 48
    .local v0, "game":Lcom/biznessapps/golfcourse/model/Game;
    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/biznessapps/golfcourse/model/Game;->mGameMap:Landroid/support/v4/util/LongSparseArray;

    iget-wide v2, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 53
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addPlayer(J)V
    .locals 4
    .param p1, "playerId"    # J

    .prologue
    .line 114
    iget-object v2, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {p1, p2}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v0

    .line 117
    .local v0, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-object v2, p0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 118
    new-instance v1, Lcom/biznessapps/golfcourse/model/PlayerScore;

    invoke-direct {v1}, Lcom/biznessapps/golfcourse/model/PlayerScore;-><init>()V

    .line 119
    .local v1, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    iget-wide v2, p0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    iput-wide v2, v1, Lcom/biznessapps/golfcourse/model/PlayerScore;->gameId:J

    .line 120
    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/biznessapps/golfcourse/model/PlayerScore;->playerId:J

    .line 121
    iget-object v2, p0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v1    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    :cond_0
    return-void
.end method

.method public deletePlayer(J)V
    .locals 8
    .param p1, "playerId"    # J

    .prologue
    .line 126
    const/4 v4, 0x0

    .local v4, "playerIdx":I
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 128
    .local v1, "gamePlayerId":J
    cmp-long v5, v1, p1

    if-nez v5, :cond_1

    .line 129
    invoke-static {p1, p2}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v3

    .line 131
    .local v3, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v5

    iget-wide v6, p0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v5, p1, p2, v6, v7}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deletePlayerScoresForGame(JJ)Z

    .line 136
    iget-object v5, p0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "gamePlayerId":J
    .end local v3    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_0
    :goto_1
    return-void

    .line 137
    .restart local v1    # "gamePlayerId":J
    .restart local v3    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v0    # "e":Lcom/biznessapps/storage/StorageException;
    .end local v3    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getCourse()Lcom/biznessapps/golfcourse/model/Course;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    iget-wide v0, v0, Lcom/biznessapps/golfcourse/model/Course;->courseId:J

    iget-wide v2, p0, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    .line 101
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v0

    iget-wide v1, p0, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getCourse(J)Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    .line 101
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    goto :goto_0
.end method

.method public getPlayerCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public setCourse(Lcom/biznessapps/golfcourse/model/Course;)V
    .locals 2
    .param p1, "course"    # Lcom/biznessapps/golfcourse/model/Course;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    .line 106
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/biznessapps/golfcourse/model/Game;->mCourse:Lcom/biznessapps/golfcourse/model/Course;

    iget-wide v0, v0, Lcom/biznessapps/golfcourse/model/Course;->courseId:J

    iput-wide v0, p0, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    goto :goto_0
.end method

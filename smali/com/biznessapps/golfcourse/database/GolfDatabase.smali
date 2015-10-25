.class public Lcom/biznessapps/golfcourse/database/GolfDatabase;
.super Lcom/biznessapps/common/database/CommonDatabase;
.source "GolfDatabase.java"


# static fields
.field public static final COLUMN_GOLF_COURSE_DESCRIPTION:Ljava/lang/String; = "courseDescription"

.field public static final COLUMN_GOLF_COURSE_HOLES:Ljava/lang/String; = "holesData"

.field public static final COLUMN_GOLF_COURSE_ID:Ljava/lang/String; = "courseId"

.field public static final COLUMN_GOLF_COURSE_IS_REMOVED:Ljava/lang/String; = "courseIsRemoved"

.field public static final COLUMN_GOLF_COURSE_NAME:Ljava/lang/String; = "courseName"

.field public static final COLUMN_GOLF_COURSE_THUMBNAIL_URL:Ljava/lang/String; = "imageURL"

.field public static final COLUMN_GOLF_COURSE_UNIT:Ljava/lang/String; = "courseUnit"

.field public static final COLUMN_GOLF_COURSE_USE_OVERLAY:Ljava/lang/String; = "useOverlay"

.field public static final COLUMN_GOLF_GAME_DATE:Ljava/lang/String; = "createdDate"

.field public static final COLUMN_GOLF_GAME_ID:Ljava/lang/String; = "gameId"

.field public static final COLUMN_GOLF_GAME_IS_FINISHED:Ljava/lang/String; = "isFinished"

.field public static final COLUMN_GOLF_GAME_NOTES:Ljava/lang/String; = "notes"

.field public static final COLUMN_GOLF_GAME_RECENT_HOLE_NO:Ljava/lang/String; = "recentHoleNo"

.field public static final COLUMN_GOLF_HISTORY_OF_PLAYER_ID:Ljava/lang/String; = "historyPlayerId"

.field public static final COLUMN_GOLF_HOLE_NUMBER:Ljava/lang/String; = "holeNumber"

.field public static final COLUMN_GOLF_PLAYER_EMAIL:Ljava/lang/String; = "email"

.field public static final COLUMN_GOLF_PLAYER_HANDICAP:Ljava/lang/String; = "handicap"

.field public static final COLUMN_GOLF_PLAYER_ID:Ljava/lang/String; = "playerId"

.field public static final COLUMN_GOLF_PLAYER_IS_MALE:Ljava/lang/String; = "isMale"

.field public static final COLUMN_GOLF_PLAYER_IS_REMOVED:Ljava/lang/String; = "playerIsRemoved"

.field public static final COLUMN_GOLF_PLAYER_NAME:Ljava/lang/String; = "playerName"

.field public static final COLUMN_GOLF_PLAYER_TEE_COLOR:Ljava/lang/String; = "teeColor"

.field public static final COLUMN_GOLF_PUTTS:Ljava/lang/String; = "putts"

.field public static final COLUMN_GOLF_SCORE:Ljava/lang/String; = "score"

.field public static final COLUMN_GOLF_SCORE_ID:Ljava/lang/String; = "scoreId"

.field public static final GOLF_COURSE_TABLE:Ljava/lang/String; = "golf_course_table"

.field public static final GOLF_GAME_TABLE:Ljava/lang/String; = "golf_game_table"

.field public static final GOLF_HISTORY_OF_PLAYER_TABLE:Ljava/lang/String; = "golf_history_of_player_table"

.field public static final GOLF_PLAYER_TABLE:Ljava/lang/String; = "golf_player_table"

.field public static final GOLF_SCORE_TABLE:Ljava/lang/String; = "golf_scores_table"

.field public static final REQUEST_CREATE_GOLF_COURSE_TABLE:Ljava/lang/String; = "CREATE TABLE \"golf_course_table\" (\"courseId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseName\" TEXT,\"courseDescription\" TEXT,\"imageURL\" TEXT,\"useOverlay\" TEXT,\"holesData\" TEXT,\"courseIsRemoved\" INTEGER, \"courseUnit\" INTEGER)"

.field public static final REQUEST_CREATE_GOLF_GAME_TABLE:Ljava/lang/String; = "CREATE TABLE \"golf_game_table\" (\"gameId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseId\" INTEGER,\"notes\" TEXT,\"createdDate\" INTEGER,\"recentHoleNo\" INTEGER,\"isFinished\" INTEGER)"

.field public static final REQUEST_CREATE_GOLF_HISTORY_OF_PLAYER_HISTORY_TABLE:Ljava/lang/String; = "CREATE TABLE \"golf_history_of_player_table\" (\"historyPlayerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerId\" INTEGER,\"gameId\" INTEGER)"

.field public static final REQUEST_CREATE_GOLF_PLAYER_HISTORY_TABLE:Ljava/lang/String; = "CREATE TABLE \"golf_player_table\" (\"historyPlayerId\" INTEGER,\"playerId\" INTEGER,\"gameId\" INTEGER)"

.field public static final REQUEST_CREATE_GOLF_PLAYER_TABLE:Ljava/lang/String; = "CREATE TABLE \"golf_player_table\" (\"playerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerName\" TEXT,\"isMale\" INTEGER,\"teeColor\" TEXT,\"handicap\" INTEGER,\"email\" TEXT,\"playerIsRemoved\" INTEGER)"

.field public static final REQUEST_CREATE_GOLF_SCORE_TABLE:Ljava/lang/String; = "CREATE TABLE \"golf_scores_table\" (\"scoreId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"gameId\" INTEGER,\"playerId\" INTEGER,\"holeNumber\" INTEGER,\"score\" INTEGER,\"putts\" INTEGER)"

.field public static final REQUEST_DROP_GOLF_COURSE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS golf_course_table"

.field public static final REQUEST_DROP_GOLF_GAME_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS golf_game_table"

.field public static final REQUEST_DROP_GOLF_PLAYER_HISTORY_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS golf_history_of_player_table"

.field public static final REQUEST_DROP_GOLF_PLAYER_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS golf_player_table"

.field public static final REQUEST_DROP_GOLF_SCORE_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS golf_scores_table"

.field private static sDatabase:Lcom/biznessapps/golfcourse/database/GolfDatabase;


# direct methods
.method protected constructor <init>(Lcom/biznessapps/storage/StorageAccessor$DbHelper;Ljava/lang/Object;)V
    .locals 0
    .param p1, "helper"    # Lcom/biznessapps/storage/StorageAccessor$DbHelper;
    .param p2, "locker"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/common/database/CommonDatabase;-><init>(Lcom/biznessapps/storage/StorageAccessor$DbHelper;Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method private fillCourseData(Lcom/biznessapps/golfcourse/model/Course;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "course"    # Lcom/biznessapps/golfcourse/model/Course;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 192
    const-string v1, "courseId"

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/biznessapps/golfcourse/model/Course;->courseId:J

    .line 193
    const-string v1, "courseName"

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    .line 194
    const-string v1, "courseDescription"

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/golfcourse/model/Course;->description:Ljava/lang/String;

    .line 195
    const-string v1, "imageURL"

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    .line 196
    const-string v1, "useOverlay"

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z

    .line 197
    const-string v1, "courseIsRemoved"

    invoke-virtual {p0, p2, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/biznessapps/golfcourse/model/Course;->isRemoved:Z

    .line 198
    const-string v1, "courseUnit"

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/biznessapps/golfcourse/model/Course;->setUnitType(I)V

    .line 201
    const-string v1, "holesData"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "holeList":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/biznessapps/golfcourse/model/Course;->setHoleList(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private fillGameData(Lcom/biznessapps/golfcourse/model/Game;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "game"    # Lcom/biznessapps/golfcourse/model/Game;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 747
    const-string v1, "gameId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/biznessapps/golfcourse/model/Game;->id:J

    .line 748
    const-string v1, "courseId"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    .line 749
    const-string v1, "notes"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    .line 750
    const-string v1, "createdDate"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    .line 751
    const-string v1, "createdDate"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/biznessapps/golfcourse/model/Game;->endDate:J

    .line 752
    const-string v1, "recentHoleNo"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    .line 753
    const-string v1, "isFinished"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p1, Lcom/biznessapps/golfcourse/model/Game;->isFinished:Z

    .line 756
    iget-wide v0, p1, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayerIdsForGame(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    .line 757
    return-void

    .line 753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillPlayerData(Lcom/biznessapps/golfcourse/model/Player;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 362
    const-string v0, "playerId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/biznessapps/golfcourse/model/Player;->setId(J)V

    .line 363
    const-string v0, "playerName"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    .line 364
    const-string v0, "isMale"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/biznessapps/golfcourse/model/Player;->isMale:Z

    .line 365
    const-string v0, "teeColor"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/biznessapps/golfcourse/model/Player;->teeColor:Ljava/lang/String;

    .line 366
    const-string v0, "handicap"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    .line 367
    const-string v0, "email"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;

    .line 368
    const-string v0, "playerIsRemoved"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p1, Lcom/biznessapps/golfcourse/model/Player;->isRemoved:Z

    .line 369
    return-void

    :cond_0
    move v0, v2

    .line 364
    goto :goto_0

    :cond_1
    move v1, v2

    .line 368
    goto :goto_1
.end method

.method private fillScoreData(Lcom/biznessapps/golfcourse/model/Score;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "score"    # Lcom/biznessapps/golfcourse/model/Score;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 967
    const-string v0, "scoreId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/biznessapps/golfcourse/model/Score;->id:J

    .line 968
    const-string v0, "gameId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/biznessapps/golfcourse/model/Score;->gameID:J

    .line 969
    const-string v0, "playerId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/biznessapps/golfcourse/model/Score;->playerID:J

    .line 970
    const-string v0, "holeNumber"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/biznessapps/golfcourse/model/Score;->holeNumber:I

    .line 971
    const-string v0, "score"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/biznessapps/golfcourse/model/Score;->score:I

    .line 972
    const-string v0, "putts"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    .line 973
    return-void
.end method

.method private getCourseContentValues(Lcom/biznessapps/golfcourse/model/Course;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "course"    # Lcom/biznessapps/golfcourse/model/Course;

    .prologue
    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 292
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "courseName"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "courseDescription"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Course;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "imageURL"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Course;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "useOverlay"

    iget-boolean v2, p1, Lcom/biznessapps/golfcourse/model/Course;->useOverlay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    const-string v1, "courseUnit"

    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Course;->getUnitType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v1, "holesData"

    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Course;->getJsonHoleList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-object v0
.end method

.method private getGameContentValues(Lcom/biznessapps/golfcourse/model/Game;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "game"    # Lcom/biznessapps/golfcourse/model/Game;

    .prologue
    .line 839
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 841
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "courseId"

    iget-wide v2, p1, Lcom/biznessapps/golfcourse/model/Game;->courseId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    const-string v1, "notes"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "createdDate"

    iget-wide v2, p1, Lcom/biznessapps/golfcourse/model/Game;->startDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 844
    const-string v1, "recentHoleNo"

    iget v2, p1, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const-string v2, "isFinished"

    iget-boolean v1, p1, Lcom/biznessapps/golfcourse/model/Game;->isFinished:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    return-object v0

    .line 845
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->sDatabase:Lcom/biznessapps/golfcourse/database/GolfDatabase;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->sDatabase:Lcom/biznessapps/golfcourse/database/GolfDatabase;

    goto :goto_0
.end method

.method public static getInstance(Lcom/biznessapps/storage/StorageAccessor$DbHelper;Ljava/lang/Object;)Lcom/biznessapps/golfcourse/database/GolfDatabase;
    .locals 1
    .param p0, "helper"    # Lcom/biznessapps/storage/StorageAccessor$DbHelper;
    .param p1, "locker"    # Ljava/lang/Object;

    .prologue
    .line 143
    sget-object v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->sDatabase:Lcom/biznessapps/golfcourse/database/GolfDatabase;

    if-nez v0, :cond_2

    .line 144
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_1
    new-instance v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;-><init>(Lcom/biznessapps/storage/StorageAccessor$DbHelper;Ljava/lang/Object;)V

    sput-object v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->sDatabase:Lcom/biznessapps/golfcourse/database/GolfDatabase;

    .line 150
    :cond_2
    sget-object v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->sDatabase:Lcom/biznessapps/golfcourse/database/GolfDatabase;

    goto :goto_0
.end method

.method private getPlayerContentValues(Lcom/biznessapps/golfcourse/model/Player;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;

    .prologue
    .line 471
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "playerName"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Player;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "isMale"

    iget-boolean v2, p1, Lcom/biznessapps/golfcourse/model/Player;->isMale:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 475
    const-string v1, "teeColor"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Player;->teeColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "handicap"

    iget v2, p1, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string v1, "email"

    iget-object v2, p1, Lcom/biznessapps/golfcourse/model/Player;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-object v0
.end method

.method private getPlayerHistoryContentValues(JJ)Landroid/content/ContentValues;
    .locals 3
    .param p1, "playerId"    # J
    .param p3, "gameId"    # J

    .prologue
    .line 640
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 642
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "playerId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 643
    const-string v1, "gameId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    return-object v0
.end method

.method private getScoreContentValues(Lcom/biznessapps/golfcourse/model/Score;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "score"    # Lcom/biznessapps/golfcourse/model/Score;

    .prologue
    .line 955
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 957
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "gameId"

    iget-wide v2, p1, Lcom/biznessapps/golfcourse/model/Score;->gameID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 958
    const-string v1, "playerId"

    iget-wide v2, p1, Lcom/biznessapps/golfcourse/model/Score;->playerID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 959
    const-string v1, "holeNumber"

    iget v2, p1, Lcom/biznessapps/golfcourse/model/Score;->holeNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 960
    const-string v1, "score"

    iget v2, p1, Lcom/biznessapps/golfcourse/model/Score;->score:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 961
    const-string v1, "putts"

    iget v2, p1, Lcom/biznessapps/golfcourse/model/Score;->putts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    return-object v0
.end method


# virtual methods
.method public addCourse(Lcom/biznessapps/golfcourse/model/Course;)Lcom/biznessapps/golfcourse/model/Course;
    .locals 7
    .param p1, "course"    # Lcom/biznessapps/golfcourse/model/Course;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 305
    const/4 v0, 0x0

    .line 308
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getCourseContentValues(Lcom/biznessapps/golfcourse/model/Course;)Landroid/content/ContentValues;

    move-result-object v2

    .line 309
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 310
    const-string v3, "golf_course_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/biznessapps/golfcourse/model/Course;->courseId:J

    .line 311
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 318
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    return-object p1

    .line 312
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with adding course data to the storage"

    invoke-direct {v3, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 316
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3

    .line 318
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public addCourseList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Course;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "courseList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Course;>;"
    iget-object v5, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v4}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 271
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 283
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    :goto_0
    return-void

    .line 274
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Course;

    .line 277
    .local v0, "courseItem":Lcom/biznessapps/golfcourse/model/Course;
    invoke-virtual {p0, v0}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addCourse(Lcom/biznessapps/golfcourse/model/Course;)Lcom/biznessapps/golfcourse/model/Course;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 280
    .end local v0    # "courseItem":Lcom/biznessapps/golfcourse/model/Course;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding course\'s data to the database"

    invoke-direct {v4, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 286
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 279
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 283
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 286
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public addGame(Lcom/biznessapps/golfcourse/model/Game;)V
    .locals 13
    .param p1, "game"    # Lcom/biznessapps/golfcourse/model/Game;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 852
    iget-object v10, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v10

    .line 853
    const/4 v0, 0x0

    .line 856
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 857
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getGameContentValues(Lcom/biznessapps/golfcourse/model/Game;)Landroid/content/ContentValues;

    move-result-object v8

    .line 859
    .local v8, "values":Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v9}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 860
    const-string v9, "golf_game_table"

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    iput-wide v11, p1, Lcom/biznessapps/golfcourse/model/Game;->id:J

    .line 861
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 866
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v0, :cond_1

    .line 867
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 871
    :cond_1
    iget-object v9, p1, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 872
    .local v4, "playerId":J
    iget-wide v11, p1, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {p0, v4, v5, v11, v12}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addPlayerHistory(JJ)V

    goto :goto_0

    .line 882
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "playerId":J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 863
    :catch_0
    move-exception v1

    .line 864
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Lcom/biznessapps/storage/StorageException;

    const-string v11, "error with adding game\'s data to the database"

    invoke-direct {v9, v11}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 866
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    if-eqz v0, :cond_2

    .line 867
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v9

    .line 876
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p1, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 877
    .local v6, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, v6, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 878
    iget-object v9, v6, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/model/Score;

    .line 879
    .local v7, "score":Lcom/biznessapps/golfcourse/model/Score;
    invoke-virtual {p0, v7}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addScore(Lcom/biznessapps/golfcourse/model/Score;)V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 882
    .end local v2    # "i":I
    .end local v6    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v7    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_5
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 883
    return-void
.end method

.method public addPlayer(Lcom/biznessapps/golfcourse/model/Player;)V
    .locals 7
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 488
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updatePlayer(Lcom/biznessapps/golfcourse/model/Player;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    if-eqz v0, :cond_0

    .line 499
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :goto_0
    return-void

    .line 491
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayerContentValues(Lcom/biznessapps/golfcourse/model/Player;)Landroid/content/ContentValues;

    move-result-object v2

    .line 492
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 493
    const-string v3, "golf_player_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/biznessapps/golfcourse/model/Player;->setId(J)V

    .line 494
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    if-eqz v0, :cond_2

    .line 499
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 501
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with adding player\'s data to the database"

    invoke-direct {v3, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_3

    .line 499
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public addPlayerHistory(JJ)V
    .locals 6
    .param p1, "playerId"    # J
    .param p3, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 650
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->isExistPlayerHistory(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    monitor-exit v4

    .line 670
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 655
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayerHistoryContentValues(JJ)Landroid/content/ContentValues;

    move-result-object v2

    .line 659
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "golf_history_of_player_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 660
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 662
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 666
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 669
    monitor-exit v4

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 663
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with adding player\'s history to the database"

    invoke-direct {v3, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 666
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 667
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public addPlayerList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Player;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "playerList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Player;>;"
    iget-object v5, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 449
    :try_start_0
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v4}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 452
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 464
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 465
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    :goto_0
    return-void

    .line 455
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 457
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/golfcourse/model/Player;

    .line 458
    .local v3, "playerItem":Lcom/biznessapps/golfcourse/model/Player;
    invoke-virtual {p0, v3}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addPlayer(Lcom/biznessapps/golfcourse/model/Player;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 461
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "playerItem":Lcom/biznessapps/golfcourse/model/Player;
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding player\'s data to the database"

    invoke-direct {v4, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 465
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 467
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 460
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 464
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 465
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 467
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public addScore(Lcom/biznessapps/golfcourse/model/Score;)V
    .locals 7
    .param p1, "score"    # Lcom/biznessapps/golfcourse/model/Score;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 978
    const/4 v0, 0x0

    .line 981
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateScore(Lcom/biznessapps/golfcourse/model/Score;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 982
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getScoreContentValues(Lcom/biznessapps/golfcourse/model/Score;)Landroid/content/ContentValues;

    move-result-object v2

    .line 984
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 985
    const-string v3, "golf_scores_table"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/biznessapps/golfcourse/model/Score;->id:J

    .line 986
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    if-eqz v0, :cond_1

    .line 992
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 994
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 995
    return-void

    .line 988
    :catch_0
    move-exception v1

    .line 989
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error with adding score\'s data to the database"

    invoke-direct {v3, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 991
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 992
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v3

    .line 994
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 167
    const-string v0, "CREATE TABLE \"golf_course_table\" (\"courseId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseName\" TEXT,\"courseDescription\" TEXT,\"imageURL\" TEXT,\"useOverlay\" TEXT,\"holesData\" TEXT,\"courseIsRemoved\" INTEGER, \"courseUnit\" INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "CREATE TABLE \"golf_player_table\" (\"playerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerName\" TEXT,\"isMale\" INTEGER,\"teeColor\" TEXT,\"handicap\" INTEGER,\"email\" TEXT,\"playerIsRemoved\" INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE TABLE \"golf_game_table\" (\"gameId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseId\" INTEGER,\"notes\" TEXT,\"createdDate\" INTEGER,\"recentHoleNo\" INTEGER,\"isFinished\" INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v0, "CREATE TABLE \"golf_history_of_player_table\" (\"historyPlayerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerId\" INTEGER,\"gameId\" INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string v0, "CREATE TABLE \"golf_scores_table\" (\"scoreId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"gameId\" INTEGER,\"playerId\" INTEGER,\"holeNumber\" INTEGER,\"score\" INTEGER,\"putts\" INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public deleteCourse(Lcom/biznessapps/golfcourse/model/Course;)V
    .locals 9
    .param p1, "course"    # Lcom/biznessapps/golfcourse/model/Course;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 346
    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 348
    iget-object v2, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 351
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "golf_course_table"

    const-string v3, "courseId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p1, Lcom/biznessapps/golfcourse/model/Course;->courseId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 357
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    return-void

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v2, v3

    .line 346
    goto :goto_0

    .line 352
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v3, "error to delete the course data"

    invoke-direct {v2, v3}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 357
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public deleteGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    .locals 16
    .param p1, "game"    # Lcom/biznessapps/golfcourse/model/Game;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 924
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v10

    .line 925
    if-eqz p1, :cond_1

    const/4 v9, 0x1

    :goto_0
    :try_start_0
    invoke-static {v9}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 927
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v9}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 928
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v3, 0x0

    .line 931
    .local v3, "effectedNo":J
    :try_start_1
    const-string v9, "golf_game_table"

    const-string v11, "gameId=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v9, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    int-to-long v3, v9

    .line 935
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 939
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deletePlayerHistoryForGame(J)V

    .line 942
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 943
    .local v7, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v9, v7, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 944
    iget-object v9, v7, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/golfcourse/model/Score;

    .line 945
    .local v8, "score":Lcom/biznessapps/golfcourse/model/Score;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deleteScore(Lcom/biznessapps/golfcourse/model/Score;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 943
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 925
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "effectedNo":J
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v8    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 932
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "effectedNo":J
    :catch_0
    move-exception v2

    .line 933
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v9, Lcom/biznessapps/storage/StorageException;

    const-string v11, "error to delete game from the database"

    invoke-direct {v9, v11}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 935
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v9

    .line 950
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "effectedNo":J
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 949
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "effectedNo":J
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v9, v3, v11

    if-lez v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public deletePlayer(Lcom/biznessapps/golfcourse/model/Player;Z)Z
    .locals 1
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .param p2, "permanent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 526
    if-eqz p2, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->permanentlyDeletePlayer(Lcom/biznessapps/golfcourse/model/Player;)Z

    move-result v0

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updatePlayerAsDeleted(Lcom/biznessapps/golfcourse/model/Player;)Z

    move-result v0

    goto :goto_0
.end method

.method public deletePlayerHistory(JJ)V
    .locals 8
    .param p1, "playerId"    # J
    .param p3, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 703
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 706
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "golf_history_of_player_table"

    const-string v4, "playerId=? and gameId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 713
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 714
    return-void

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error to delete player\'s history at the database."

    invoke-direct {v2, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 713
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public deletePlayerHistoryForGame(J)V
    .locals 8
    .param p1, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 718
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 721
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "golf_history_of_player_table"

    const-string v4, "gameId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 728
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 729
    return-void

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error with adding coupon\'s data to the storage"

    invoke-direct {v2, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 726
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 728
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public deletePlayerHistoryForPlayer(J)V
    .locals 8
    .param p1, "playerId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v3, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 736
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "golf_history_of_player_table"

    const-string v4, "playerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 743
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 744
    return-void

    .line 738
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v4, "error to delete player\'s history"

    invoke-direct {v2, v4}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 743
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public deletePlayerScores(J)Z
    .locals 12
    .param p1, "playerId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1036
    iget-object v6, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v6

    .line 1037
    :try_start_0
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v7}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1038
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1041
    .local v2, "effectedNo":J
    :try_start_1
    const-string v7, "golf_scores_table"

    const-string v8, "playerId=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    int-to-long v2, v7

    .line 1045
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1048
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v4

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error deleting player\'s score"

    invoke-direct {v4, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1045
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 1049
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    :cond_0
    move v4, v5

    .line 1048
    goto :goto_0
.end method

.method public deletePlayerScoresForGame(JJ)Z
    .locals 10
    .param p1, "playerId"    # J
    .param p3, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 1053
    iget-object v5, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 1054
    :try_start_0
    iget-object v4, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v4}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1055
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1058
    .local v2, "effectedNo":J
    :try_start_1
    const-string v4, "golf_scores_table"

    const-string v6, "playerId=? and gameId=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    int-to-long v2, v4

    .line 1063
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1066
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v4

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error deleting player\'s score for specified game"

    invoke-direct {v4, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1063
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 1067
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 1066
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public deleteScore(Lcom/biznessapps/golfcourse/model/Score;)Z
    .locals 13
    .param p1, "score"    # Lcom/biznessapps/golfcourse/model/Score;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1017
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 1018
    if-eqz p1, :cond_0

    move v6, v4

    :goto_0
    :try_start_0
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1020
    iget-object v6, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1021
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1024
    .local v2, "effectedNo":J
    :try_start_1
    const-string v6, "golf_scores_table"

    const-string v8, "scoreId=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/biznessapps/golfcourse/model/Score;->id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    int-to-long v2, v6

    .line 1028
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1031
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-lez v6, :cond_1

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v4

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :cond_0
    move v6, v5

    .line 1018
    goto :goto_0

    .line 1025
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    :catch_0
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error to delete the score from the database"

    invoke-direct {v4, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1028
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 1032
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v4

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    :cond_1
    move v4, v5

    .line 1031
    goto :goto_1
.end method

.method public dropDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 176
    const-string v0, "DROP TABLE IF EXISTS golf_course_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "DROP TABLE IF EXISTS golf_player_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "DROP TABLE IF EXISTS golf_game_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "DROP TABLE IF EXISTS golf_history_of_player_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "DROP TABLE IF EXISTS golf_scores_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public getAllCourses()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Course;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 207
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, "courseList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Course;>;"
    iget-object v14, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v14

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "golf_course_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 212
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 213
    const-string v1, "DbHelper"

    const-string v2, "cursor = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v14

    move-object v9, v13

    .line 233
    .end local v9    # "courseList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Course;>;"
    :goto_0
    return-object v9

    .line 217
    .restart local v9    # "courseList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Course;>;"
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    .line 218
    .local v12, "working":Z
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 219
    .local v11, "size":I
    if-eqz v12, :cond_1

    if-lez v11, :cond_1

    .line 220
    :goto_1
    if-eqz v12, :cond_1

    .line 221
    new-instance v8, Lcom/biznessapps/golfcourse/model/Course;

    invoke-direct {v8}, Lcom/biznessapps/golfcourse/model/Course;-><init>()V

    .line 222
    .local v8, "course":Lcom/biznessapps/golfcourse/model/Course;
    invoke-direct {p0, v8, v10}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->fillCourseData(Lcom/biznessapps/golfcourse/model/Course;Landroid/database/Cursor;)V

    .line 224
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    .line 226
    goto :goto_1

    .line 229
    .end local v8    # "course":Lcom/biznessapps/golfcourse/model/Course;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    monitor-exit v14

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "size":I
    .end local v12    # "working":Z
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllGames(Z)Ljava/util/List;
    .locals 19
    .param p1, "ignoreCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Game;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v14, "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Game;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v13, "gameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 765
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 766
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "golf_game_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "createdDate DESC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 768
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 769
    const-string v2, "DbHelper"

    const-string v3, "cursor = null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v14, 0x0

    monitor-exit v18

    .line 798
    .end local v14    # "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Game;>;"
    :goto_0
    return-object v14

    .line 773
    .restart local v14    # "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Game;>;"
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    .line 774
    .local v17, "working":Z
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 775
    .local v16, "size":I
    if-eqz v17, :cond_1

    if-lez v16, :cond_1

    .line 776
    :goto_1
    if-eqz v17, :cond_1

    .line 777
    const-string v2, "gameId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 778
    .local v11, "gameId":J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    .line 780
    goto :goto_1

    .line 783
    .end local v11    # "gameId":J
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 784
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 786
    if-eqz p1, :cond_2

    .line 787
    invoke-static {}, Lcom/biznessapps/golfcourse/model/Game;->clearCache()V

    .line 790
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 792
    .restart local v11    # "gameId":J
    invoke-static {v11, v12}, Lcom/biznessapps/golfcourse/model/Game;->getGame(J)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v10

    .line 793
    .local v10, "game":Lcom/biznessapps/golfcourse/model/Game;
    if-eqz v10, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 794
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 796
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .end local v11    # "gameId":J
    .end local v14    # "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Game;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "size":I
    .end local v17    # "working":Z
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 793
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .restart local v11    # "gameId":J
    .restart local v14    # "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Game;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "size":I
    .restart local v17    # "working":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 796
    .end local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .end local v11    # "gameId":J
    :cond_4
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAllPlayers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/golfcourse/model/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 405
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v5, "playerList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Player;>;"
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getAllPlayersIds()Ljava/util/List;

    move-result-object v4

    .line 408
    .local v4, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 409
    .local v2, "playerId":J
    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    .line 410
    .local v1, "player":Lcom/biznessapps/golfcourse/model/Player;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v2    # "playerId":J
    .end local v4    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "playerList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Player;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 413
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v4    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "playerList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/golfcourse/model/Player;>;"
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5
.end method

.method public getAllPlayersIds()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v15

    .line 374
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v12, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 378
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "golf_player_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 380
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 381
    const-string v2, "DbHelper"

    const-string v3, "cursor = null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v12, 0x0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v12    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :goto_0
    return-object v12

    .line 385
    .restart local v12    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    .line 386
    .local v14, "working":Z
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 387
    .local v13, "size":I
    if-eqz v14, :cond_1

    if-lez v13, :cond_1

    .line 388
    :goto_1
    if-eqz v14, :cond_1

    .line 389
    const-string v2, "playerId"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 390
    .local v10, "playerId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    .line 392
    goto :goto_1

    .line 395
    .end local v10    # "playerId":J
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 396
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 397
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    :try_start_4
    monitor-exit v15

    goto :goto_0

    .line 400
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v13    # "size":I
    .end local v14    # "working":Z
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 397
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getCourse(J)Lcom/biznessapps/golfcourse/model/Course;
    .locals 14
    .param p1, "courseId"    # J

    .prologue
    .line 237
    const/4 v8, 0x0

    .line 239
    .local v8, "course":Lcom/biznessapps/golfcourse/model/Course;
    iget-object v13, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v13

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "golf_course_table"

    const/4 v2, 0x0

    const-string v3, "courseId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 244
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 245
    const-string v1, "DbHelper"

    const-string v2, "cursor = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    monitor-exit v13

    .line 261
    :goto_0
    return-object v1

    .line 249
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    .line 250
    .local v12, "working":Z
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 251
    .local v11, "size":I
    if-eqz v12, :cond_1

    if-lez v11, :cond_1

    .line 252
    const/4 v1, 0x1

    if-ne v11, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 254
    new-instance v9, Lcom/biznessapps/golfcourse/model/Course;

    invoke-direct {v9}, Lcom/biznessapps/golfcourse/model/Course;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v8    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .local v9, "course":Lcom/biznessapps/golfcourse/model/Course;
    :try_start_1
    invoke-direct {p0, v9, v10}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->fillCourseData(Lcom/biznessapps/golfcourse/model/Course;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 258
    .end local v9    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .restart local v8    # "course":Lcom/biznessapps/golfcourse/model/Course;
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 259
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 261
    monitor-exit v13

    move-object v1, v8

    goto :goto_0

    .line 252
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 262
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "size":I
    .end local v12    # "working":Z
    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .end local v8    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "size":I
    .restart local v12    # "working":Z
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "course":Lcom/biznessapps/golfcourse/model/Course;
    .restart local v8    # "course":Lcom/biznessapps/golfcourse/model/Course;
    goto :goto_2
.end method

.method public getGame(J)Lcom/biznessapps/golfcourse/model/Game;
    .locals 20
    .param p1, "gameId"    # J

    .prologue
    .line 802
    const/4 v10, 0x0

    .line 804
    .local v10, "game":Lcom/biznessapps/golfcourse/model/Game;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 805
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 806
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "golf_game_table"

    const/4 v3, 0x0

    const-string v4, "gameId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 809
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 810
    const-string v2, "DbHelper"

    const-string v3, "cursor = null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v2, 0x0

    monitor-exit v19

    .line 834
    :goto_0
    return-object v2

    .line 814
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    .line 815
    .local v18, "working":Z
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 816
    .local v17, "size":I
    if-eqz v18, :cond_1

    if-lez v17, :cond_1

    .line 817
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 819
    new-instance v11, Lcom/biznessapps/golfcourse/model/Game;

    invoke-direct {v11}, Lcom/biznessapps/golfcourse/model/Game;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    .end local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .local v11, "game":Lcom/biznessapps/golfcourse/model/Game;
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->fillGameData(Lcom/biznessapps/golfcourse/model/Game;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v11

    .line 823
    .end local v11    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .restart local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    :cond_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 824
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 827
    iget-object v2, v10, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 828
    .local v14, "playerId":J
    invoke-static {v14, v15}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v13

    .line 829
    .local v13, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-wide v2, v10, Lcom/biznessapps/golfcourse/model/Game;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v14, v15}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayerScore(JJ)Lcom/biznessapps/golfcourse/model/PlayerScore;

    move-result-object v16

    .line 831
    .local v16, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    iget-object v2, v10, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 835
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .end local v14    # "playerId":J
    .end local v16    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v17    # "size":I
    .end local v18    # "working":Z
    :catchall_0
    move-exception v2

    :goto_3
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 817
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "size":I
    .restart local v18    # "working":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 834
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v10

    goto :goto_0

    .line 835
    .end local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .end local v12    # "i$":Ljava/util/Iterator;
    .restart local v11    # "game":Lcom/biznessapps/golfcourse/model/Game;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "game":Lcom/biznessapps/golfcourse/model/Game;
    .restart local v10    # "game":Lcom/biznessapps/golfcourse/model/Game;
    goto :goto_3
.end method

.method public getGameIdsForPlayer(J)Ljava/util/List;
    .locals 13
    .param p1, "playerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v9, "gameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v12, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v12

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 614
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "golf_history_of_player_table"

    const/4 v2, 0x0

    const-string v3, "playerId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 617
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 618
    const-string v1, "DbHelper"

    const-string v2, "cursor = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v9, 0x0

    monitor-exit v12

    .line 635
    .end local v9    # "gameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    return-object v9

    .line 622
    .restart local v9    # "gameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    .line 623
    .local v11, "working":Z
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 624
    .local v10, "size":I
    if-eqz v11, :cond_1

    if-lez v10, :cond_1

    .line 625
    :goto_1
    if-eqz v11, :cond_1

    .line 626
    const-string v1, "gameId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    goto :goto_1

    .line 631
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 632
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 633
    monitor-exit v12

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "gameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "size":I
    .end local v11    # "working":Z
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;
    .locals 14
    .param p1, "playerId"    # J

    .prologue
    .line 418
    const/4 v9, 0x0

    .line 420
    .local v9, "player":Lcom/biznessapps/golfcourse/model/Player;
    iget-object v13, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v13

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 422
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "golf_player_table"

    const/4 v2, 0x0

    const-string v3, "playerId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 425
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 426
    const-string v1, "DbHelper"

    const-string v2, "cursor = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    monitor-exit v13

    .line 442
    :goto_0
    return-object v1

    .line 430
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    .line 431
    .local v12, "working":Z
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 432
    .local v11, "size":I
    if-eqz v12, :cond_1

    if-lez v11, :cond_1

    .line 433
    const/4 v1, 0x1

    if-ne v11, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 435
    new-instance v10, Lcom/biznessapps/golfcourse/model/Player;

    invoke-direct {v10}, Lcom/biznessapps/golfcourse/model/Player;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v9    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .local v10, "player":Lcom/biznessapps/golfcourse/model/Player;
    :try_start_1
    invoke-direct {p0, v10, v8}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->fillPlayerData(Lcom/biznessapps/golfcourse/model/Player;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 439
    .end local v10    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .restart local v9    # "player":Lcom/biznessapps/golfcourse/model/Player;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 440
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 442
    monitor-exit v13

    move-object v1, v9

    goto :goto_0

    .line 433
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 443
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "size":I
    .end local v12    # "working":Z
    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .end local v9    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .restart local v11    # "size":I
    .restart local v12    # "working":Z
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10    # "player":Lcom/biznessapps/golfcourse/model/Player;
    .restart local v9    # "player":Lcom/biznessapps/golfcourse/model/Player;
    goto :goto_2
.end method

.method public getPlayerIdsForGame(J)Ljava/util/List;
    .locals 13
    .param p1, "gameId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v9, "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v12, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v12

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 585
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "golf_history_of_player_table"

    const/4 v2, 0x0

    const-string v3, "gameId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 588
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 589
    const-string v1, "DbHelper"

    const-string v2, "cursor = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v9, 0x0

    monitor-exit v12

    .line 606
    .end local v9    # "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    return-object v9

    .line 593
    .restart local v9    # "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    .line 594
    .local v11, "working":Z
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 595
    .local v10, "size":I
    if-eqz v11, :cond_1

    if-lez v10, :cond_1

    .line 596
    :goto_1
    if-eqz v11, :cond_1

    .line 597
    const-string v1, "playerId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    goto :goto_1

    .line 602
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 603
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 604
    monitor-exit v12

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "playerIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "size":I
    .end local v11    # "working":Z
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerScore(JJ)Lcom/biznessapps/golfcourse/model/PlayerScore;
    .locals 17
    .param p1, "gameId"    # J
    .param p3, "playerId"    # J

    .prologue
    .line 1105
    new-instance v12, Lcom/biznessapps/golfcourse/model/PlayerScore;

    invoke-direct {v12}, Lcom/biznessapps/golfcourse/model/PlayerScore;-><init>()V

    .line 1106
    .local v12, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/biznessapps/golfcourse/model/PlayerScore;->gameId:J

    .line 1107
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/biznessapps/golfcourse/model/PlayerScore;->playerId:J

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1110
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1111
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "golf_scores_table"

    const/4 v4, 0x0

    const-string v5, "gameId=? and playerId=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1116
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1117
    const-string v3, "DbHelper"

    const-string v4, "cursor = null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v12, 0x0

    monitor-exit v16

    .line 1140
    .end local v12    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    :goto_0
    return-object v12

    .line 1121
    .restart local v12    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    .line 1122
    .local v15, "working":Z
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1123
    .local v14, "size":I
    if-eqz v15, :cond_1

    if-lez v14, :cond_1

    .line 1124
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_1

    .line 1125
    new-instance v13, Lcom/biznessapps/golfcourse/model/Score;

    invoke-direct {v13}, Lcom/biznessapps/golfcourse/model/Score;-><init>()V

    .line 1126
    .local v13, "score":Lcom/biznessapps/golfcourse/model/Score;
    move-wide/from16 v0, p1

    iput-wide v0, v13, Lcom/biznessapps/golfcourse/model/Score;->gameID:J

    .line 1127
    move-wide/from16 v0, p3

    iput-wide v0, v13, Lcom/biznessapps/golfcourse/model/Score;->playerID:J

    .line 1129
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->fillScoreData(Lcom/biznessapps/golfcourse/model/Score;Landroid/database/Cursor;)V

    .line 1131
    iget-object v3, v12, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    iget v4, v13, Lcom/biznessapps/golfcourse/model/Score;->holeNumber:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1133
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1124
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1137
    .end local v11    # "i":I
    .end local v13    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1138
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1140
    monitor-exit v16

    goto :goto_0

    .line 1141
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v14    # "size":I
    .end local v15    # "working":Z
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getScore(JJI)Lcom/biznessapps/golfcourse/model/Score;
    .locals 16
    .param p1, "gameId"    # J
    .param p3, "playerId"    # J
    .param p5, "holeNumber"    # I

    .prologue
    .line 1071
    const/4 v11, 0x0

    .line 1073
    .local v11, "score":Lcom/biznessapps/golfcourse/model/Score;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v15

    .line 1074
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v3}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1075
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "golf_scores_table"

    const/4 v4, 0x0

    const-string v5, "gameId=? and playerId=?holeNumber=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1080
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1081
    const-string v3, "DbHelper"

    const-string v4, "cursor = null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v3, 0x0

    monitor-exit v15

    .line 1100
    :goto_0
    return-object v3

    .line 1085
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    .line 1086
    .local v14, "working":Z
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1087
    .local v13, "size":I
    if-eqz v14, :cond_1

    if-lez v13, :cond_1

    .line 1088
    const/4 v3, 0x1

    if-ne v13, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1090
    new-instance v12, Lcom/biznessapps/golfcourse/model/Score;

    invoke-direct {v12}, Lcom/biznessapps/golfcourse/model/Score;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    .end local v11    # "score":Lcom/biznessapps/golfcourse/model/Score;
    .local v12, "score":Lcom/biznessapps/golfcourse/model/Score;
    :try_start_1
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/biznessapps/golfcourse/model/Score;->gameID:J

    .line 1092
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/biznessapps/golfcourse/model/Score;->playerID:J

    .line 1093
    move/from16 v0, p5

    iput v0, v12, Lcom/biznessapps/golfcourse/model/Score;->holeNumber:I

    .line 1094
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->fillScoreData(Lcom/biznessapps/golfcourse/model/Score;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 1097
    .end local v12    # "score":Lcom/biznessapps/golfcourse/model/Score;
    .restart local v11    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_1
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1098
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1100
    monitor-exit v15

    move-object v3, v11

    goto :goto_0

    .line 1088
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1101
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "size":I
    .end local v14    # "working":Z
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v11    # "score":Lcom/biznessapps/golfcourse/model/Score;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "score":Lcom/biznessapps/golfcourse/model/Score;
    .restart local v13    # "size":I
    .restart local v14    # "working":Z
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12    # "score":Lcom/biznessapps/golfcourse/model/Score;
    .restart local v11    # "score":Lcom/biznessapps/golfcourse/model/Score;
    goto :goto_2
.end method

.method public isExistPlayerHistory(JJ)Z
    .locals 13
    .param p1, "playerId"    # J
    .param p3, "gameId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v12, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v12

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 677
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "golf_history_of_player_table"

    const/4 v2, 0x0

    const-string v3, "playerId=? and gameId=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 680
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 681
    const-string v1, "DbHelper"

    const-string v2, "cursor = null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 682
    const/4 v1, 0x0

    .line 693
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    :goto_0
    return v1

    .line 685
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    .line 686
    .local v11, "working":Z
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v10

    .line 687
    .local v10, "size":I
    if-eqz v11, :cond_1

    if-lez v10, :cond_1

    .line 688
    const/4 v1, 0x1

    .line 693
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v12

    goto :goto_0

    .line 695
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "size":I
    .end local v11    # "working":Z
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 693
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "size":I
    .restart local v11    # "working":Z
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 695
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 697
    const/4 v1, 0x0

    goto :goto_0

    .line 690
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "size":I
    .end local v11    # "working":Z
    :catch_0
    move-exception v9

    .line 691
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v1, Lcom/biznessapps/storage/StorageException;

    const-string v2, "error to check player existance at the database"

    invoke-direct {v1, v2}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 693
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public permanentlyDeletePlayer(Lcom/biznessapps/golfcourse/model/Player;)Z
    .locals 13
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 554
    const-wide/16 v2, 0x0

    .line 556
    .local v2, "effectedNo":J
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 557
    if-eqz p1, :cond_0

    move v6, v4

    :goto_0
    :try_start_0
    invoke-static {v6}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 560
    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deletePlayerHistoryForPlayer(J)V

    .line 563
    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deletePlayerScores(J)Z

    .line 565
    iget-object v6, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 568
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v6, "golf_player_table"

    const-string v8, "playerId=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    int-to-long v2, v6

    .line 572
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 574
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 576
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    :goto_1
    return v4

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    move v6, v5

    .line 557
    goto :goto_0

    .line 569
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lcom/biznessapps/storage/StorageException;

    const-string v5, "error to delete player permanently."

    invoke-direct {v4, v5}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 574
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move v4, v5

    .line 576
    goto :goto_1
.end method

.method public updateCourse(Lcom/biznessapps/golfcourse/model/Course;)Z
    .locals 13
    .param p1, "course"    # Lcom/biznessapps/golfcourse/model/Course;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 325
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 326
    :try_start_0
    iget-object v8, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 328
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 330
    .local v2, "effectedNo":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getCourseContentValues(Lcom/biznessapps/golfcourse/model/Course;)Landroid/content/ContentValues;

    move-result-object v4

    .line 331
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "golf_course_table"

    const-string v9, "courseName=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/biznessapps/golfcourse/model/Course;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v8, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 332
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 339
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v5

    .line 333
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding coupon\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 340
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    move v5, v6

    .line 339
    goto :goto_0
.end method

.method public updateGame(Lcom/biznessapps/golfcourse/model/Game;)Z
    .locals 21
    .param p1, "game"    # Lcom/biznessapps/golfcourse/model/Game;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 886
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v15

    .line 887
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v14}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 889
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v5, 0x0

    .line 891
    .local v5, "effectedNo":J
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getGameContentValues(Lcom/biznessapps/golfcourse/model/Game;)Landroid/content/ContentValues;

    move-result-object v13

    .line 892
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "golf_game_table"

    const-string v16, "gameId=?"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v14, v13, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    int-to-long v5, v14

    .line 893
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 897
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 900
    const-wide/16 v16, 0x0

    cmp-long v14, v5, v16

    if-lez v14, :cond_2

    .line 902
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deletePlayerHistoryForGame(J)V

    .line 905
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 906
    .local v9, "playerId":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/biznessapps/golfcourse/model/Game;->id:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->addPlayerHistory(JJ)V

    goto :goto_0

    .line 919
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "effectedNo":J
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "playerId":J
    .end local v13    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 894
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "effectedNo":J
    :catch_0
    move-exception v4

    .line 895
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v14, Lcom/biznessapps/storage/StorageException;

    const-string v16, "error to update the game to the database"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 897
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v14

    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v14

    .line 910
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 911
    .local v11, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v14, v11, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 912
    iget-object v14, v11, Lcom/biznessapps/golfcourse/model/PlayerScore;->holeScores:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/biznessapps/golfcourse/model/Score;

    .line 913
    .local v12, "score":Lcom/biznessapps/golfcourse/model/Score;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->updateScore(Lcom/biznessapps/golfcourse/model/Score;)Z

    .line 911
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 918
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v12    # "score":Lcom/biznessapps/golfcourse/model/Score;
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v14, v5, v16

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v14

    :cond_3
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public updatePlayer(Lcom/biznessapps/golfcourse/model/Player;)Z
    .locals 14
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 506
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 507
    :try_start_0
    iget-object v8, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 509
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 511
    .local v2, "effectedNo":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayerContentValues(Lcom/biznessapps/golfcourse/model/Player;)Landroid/content/ContentValues;

    move-result-object v4

    .line 512
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "golf_player_table"

    const-string v9, "playerId=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v8, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 513
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 520
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v5

    .line 514
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error to update player\'s data to the database"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 521
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    move v5, v6

    .line 520
    goto :goto_0
.end method

.method public updatePlayerAsDeleted(Lcom/biznessapps/golfcourse/model/Player;)Z
    .locals 14
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 534
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 535
    :try_start_0
    iget-object v8, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 537
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 539
    .local v2, "effectedNo":J
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p1, Lcom/biznessapps/golfcourse/model/Player;->isRemoved:Z

    .line 540
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayerContentValues(Lcom/biznessapps/golfcourse/model/Player;)Landroid/content/ContentValues;

    move-result-object v4

    .line 541
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "golf_player_table"

    const-string v9, "playerId=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v8, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 542
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 549
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v5

    .line 543
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error to update the player as deleted"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 550
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    move v5, v6

    .line 549
    goto :goto_0
.end method

.method public updateScore(Lcom/biznessapps/golfcourse/model/Score;)Z
    .locals 14
    .param p1, "score"    # Lcom/biznessapps/golfcourse/model/Score;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 998
    iget-object v7, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mLocker:Ljava/lang/Object;

    monitor-enter v7

    .line 999
    :try_start_0
    iget-object v8, p0, Lcom/biznessapps/golfcourse/database/GolfDatabase;->mHelper:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1001
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 1003
    .local v2, "effectedNo":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getScoreContentValues(Lcom/biznessapps/golfcourse/model/Score;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1004
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "golf_scores_table"

    const-string v9, "scoreId=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-wide v12, p1, Lcom/biznessapps/golfcourse/model/Score;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v8, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 1005
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1012
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v5

    .line 1006
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1007
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error to update the score to the database"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1009
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5

    .line 1013
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "effectedNo":J
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "effectedNo":J
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    move v5, v6

    .line 1012
    goto :goto_0
.end method

.method public upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;FF)Z
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # F
    .param p3, "newVersion"    # F

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->dropDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

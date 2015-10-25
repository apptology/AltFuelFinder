.class public Lcom/biznessapps/golfcourse/model/Player;
.super Ljava/lang/Object;
.source "Player.java"


# static fields
.field private static playerMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/biznessapps/golfcourse/model/Player;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public email:Ljava/lang/String;

.field public handicap:I

.field private id:J

.field public isMale:Z

.field public isRemoved:Z

.field public name:Ljava/lang/String;

.field public teeColor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/biznessapps/golfcourse/model/Player;->playerMap:Landroid/support/v4/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/golfcourse/model/Player;->isMale:Z

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/golfcourse/model/Player;->handicap:I

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/biznessapps/golfcourse/model/Player;->playerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 65
    return-void
.end method

.method public static deletePlayer(JZ)Z
    .locals 4
    .param p0, "id"    # J
    .param p2, "permanent"    # Z

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 46
    .local v2, "result":Z
    invoke-static {p0, p1}, Lcom/biznessapps/golfcourse/model/Game;->deletePlayerFromGames(J)V

    .line 49
    invoke-static {p0, p1}, Lcom/biznessapps/golfcourse/model/Player;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v1

    .line 51
    .local v1, "player":Lcom/biznessapps/golfcourse/model/Player;
    :try_start_0
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->deletePlayer(Lcom/biznessapps/golfcourse/model/Player;Z)Z
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    :goto_0
    if-eqz p2, :cond_0

    .line 57
    sget-object v3, Lcom/biznessapps/golfcourse/model/Player;->playerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 60
    :cond_0
    return v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 31
    sget-object v1, Lcom/biznessapps/golfcourse/model/Player;->playerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/model/Player;

    .line 32
    .local v0, "player":Lcom/biznessapps/golfcourse/model/Player;
    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getInstance()Lcom/biznessapps/golfcourse/database/GolfDatabase;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/biznessapps/golfcourse/database/GolfDatabase;->getPlayer(J)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    sget-object v1, Lcom/biznessapps/golfcourse/model/Player;->playerMap:Landroid/support/v4/util/LongSparseArray;

    iget-wide v2, v0, Lcom/biznessapps/golfcourse/model/Player;->id:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 39
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/biznessapps/golfcourse/model/Player;->id:J

    return-wide v0
.end method

.method public isEqual(Lcom/biznessapps/golfcourse/model/Player;)Z
    .locals 5
    .param p1, "player"    # Lcom/biznessapps/golfcourse/model/Player;

    .prologue
    const/4 v0, 0x0

    .line 76
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/biznessapps/golfcourse/model/Player;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/biznessapps/golfcourse/model/Player;->id:J

    .line 73
    return-void
.end method

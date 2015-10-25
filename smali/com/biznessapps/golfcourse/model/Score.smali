.class public Lcom/biznessapps/golfcourse/model/Score;
.super Ljava/lang/Object;
.source "Score.java"


# static fields
.field public static final MAX_SCORE:I = 0x12

.field public static final MIN_PUTTS_VALUE:I

.field public static final MIN_SCORE_VALUE:I


# instance fields
.field public gameID:J

.field public holeNumber:I

.field public id:J

.field public playerID:J

.field public putts:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/biznessapps/golfcourse/model/Score;->id:J

    return-void
.end method

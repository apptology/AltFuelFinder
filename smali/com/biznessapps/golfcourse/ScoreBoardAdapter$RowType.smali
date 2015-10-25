.class final enum Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
.super Ljava/lang/Enum;
.source "ScoreBoardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

.field public static final enum ROW_HANDICAP:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

.field public static final enum ROW_PAR:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

.field public static final enum ROW_PLAYER:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    const-string v1, "ROW_PAR"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_PAR:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    .line 40
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    const-string v1, "ROW_HANDICAP"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_HANDICAP:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    .line 41
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    const-string v1, "ROW_PLAYER"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_PLAYER:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_PAR:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_HANDICAP:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->ROW_PLAYER:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->$VALUES:[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->$VALUES:[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    invoke-virtual {v0}, [Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/golfcourse/ScoreBoardAdapter$RowType;

    return-object v0
.end method

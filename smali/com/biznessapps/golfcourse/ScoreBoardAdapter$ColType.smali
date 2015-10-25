.class final enum Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
.super Ljava/lang/Enum;
.source "ScoreBoardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ColType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

.field public static final enum COL_CONTENT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

.field public static final enum COL_FIRST:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

.field public static final enum COL_NET_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

.field public static final enum COL_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

.field public static final enum COL_TOTAL_IN:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

.field public static final enum COL_TOTAL_OUT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    const-string v1, "COL_FIRST"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_FIRST:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 31
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    const-string v1, "COL_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_CONTENT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 32
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    const-string v1, "COL_TOTAL_IN"

    invoke-direct {v0, v1, v5}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL_IN:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 33
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    const-string v1, "COL_TOTAL_OUT"

    invoke-direct {v0, v1, v6}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL_OUT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 34
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    const-string v1, "COL_TOTAL"

    invoke-direct {v0, v1, v7}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 35
    new-instance v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    const-string v1, "COL_NET_TOTAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_NET_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_FIRST:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_CONTENT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL_IN:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL_OUT:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->COL_NET_TOTAL:Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->$VALUES:[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->$VALUES:[Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    invoke-virtual {v0}, [Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/golfcourse/ScoreBoardAdapter$ColType;

    return-object v0
.end method

.class public final enum Lnet/simonvt/menudrawer/Position;
.super Ljava/lang/Enum;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/simonvt/menudrawer/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/simonvt/menudrawer/Position;

.field public static final enum BOTTOM:Lnet/simonvt/menudrawer/Position;

.field public static final enum LEFT:Lnet/simonvt/menudrawer/Position;

.field public static final enum RIGHT:Lnet/simonvt/menudrawer/Position;

.field public static final enum TOP:Lnet/simonvt/menudrawer/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lnet/simonvt/menudrawer/Position;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    .line 11
    new-instance v0, Lnet/simonvt/menudrawer/Position;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/Position;->TOP:Lnet/simonvt/menudrawer/Position;

    .line 14
    new-instance v0, Lnet/simonvt/menudrawer/Position;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/Position;->RIGHT:Lnet/simonvt/menudrawer/Position;

    .line 17
    new-instance v0, Lnet/simonvt/menudrawer/Position;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lnet/simonvt/menudrawer/Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/Position;->BOTTOM:Lnet/simonvt/menudrawer/Position;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/simonvt/menudrawer/Position;

    sget-object v1, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    aput-object v1, v0, v2

    sget-object v1, Lnet/simonvt/menudrawer/Position;->TOP:Lnet/simonvt/menudrawer/Position;

    aput-object v1, v0, v3

    sget-object v1, Lnet/simonvt/menudrawer/Position;->RIGHT:Lnet/simonvt/menudrawer/Position;

    aput-object v1, v0, v4

    sget-object v1, Lnet/simonvt/menudrawer/Position;->BOTTOM:Lnet/simonvt/menudrawer/Position;

    aput-object v1, v0, v5

    sput-object v0, Lnet/simonvt/menudrawer/Position;->$VALUES:[Lnet/simonvt/menudrawer/Position;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/simonvt/menudrawer/Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lnet/simonvt/menudrawer/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/Position;

    return-object v0
.end method

.method public static values()[Lnet/simonvt/menudrawer/Position;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lnet/simonvt/menudrawer/Position;->$VALUES:[Lnet/simonvt/menudrawer/Position;

    invoke-virtual {v0}, [Lnet/simonvt/menudrawer/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/simonvt/menudrawer/Position;

    return-object v0
.end method

.class public final enum Lcom/biznessapps/utils/ImageScaleType;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/utils/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/utils/ImageScaleType;

.field public static final enum SCALE_FIT_PROPER:Lcom/biznessapps/utils/ImageScaleType;

.field public static final enum SCALE_FIT_X:Lcom/biznessapps/utils/ImageScaleType;

.field public static final enum SCALE_FIT_XY:Lcom/biznessapps/utils/ImageScaleType;

.field public static final enum SCALE_FIT_Y:Lcom/biznessapps/utils/ImageScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/biznessapps/utils/ImageScaleType;

    const-string v1, "SCALE_FIT_X"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/utils/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_X:Lcom/biznessapps/utils/ImageScaleType;

    .line 5
    new-instance v0, Lcom/biznessapps/utils/ImageScaleType;

    const-string v1, "SCALE_FIT_Y"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/utils/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_Y:Lcom/biznessapps/utils/ImageScaleType;

    .line 6
    new-instance v0, Lcom/biznessapps/utils/ImageScaleType;

    const-string v1, "SCALE_FIT_XY"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/utils/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_XY:Lcom/biznessapps/utils/ImageScaleType;

    .line 7
    new-instance v0, Lcom/biznessapps/utils/ImageScaleType;

    const-string v1, "SCALE_FIT_PROPER"

    invoke-direct {v0, v1, v5}, Lcom/biznessapps/utils/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_PROPER:Lcom/biznessapps/utils/ImageScaleType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/biznessapps/utils/ImageScaleType;

    sget-object v1, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_X:Lcom/biznessapps/utils/ImageScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_Y:Lcom/biznessapps/utils/ImageScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_XY:Lcom/biznessapps/utils/ImageScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/biznessapps/utils/ImageScaleType;->SCALE_FIT_PROPER:Lcom/biznessapps/utils/ImageScaleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/biznessapps/utils/ImageScaleType;->$VALUES:[Lcom/biznessapps/utils/ImageScaleType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/utils/ImageScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/biznessapps/utils/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/ImageScaleType;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/utils/ImageScaleType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/biznessapps/utils/ImageScaleType;->$VALUES:[Lcom/biznessapps/utils/ImageScaleType;

    invoke-virtual {v0}, [Lcom/biznessapps/utils/ImageScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/utils/ImageScaleType;

    return-object v0
.end method

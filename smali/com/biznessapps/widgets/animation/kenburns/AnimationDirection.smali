.class public final enum Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;
.super Ljava/lang/Enum;
.source "AnimationDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

.field public static final enum LEFT_TO_RIGHT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

.field public static final enum RIGHT_TO_LEFT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    const-string v1, "LEFT_TO_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->LEFT_TO_RIGHT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 20
    new-instance v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    const-string v1, "RIGHT_TO_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->RIGHT_TO_LEFT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    sget-object v1, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->LEFT_TO_RIGHT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->RIGHT_TO_LEFT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->$VALUES:[Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->$VALUES:[Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-virtual {v0}, [Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    return-object v0
.end method

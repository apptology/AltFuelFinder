.class final enum Lcom/biznessapps/widgets/TouchImageView$State;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/widgets/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/widgets/TouchImageView$State;

.field public static final enum ANIMATE_ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;

.field public static final enum DRAG:Lcom/biznessapps/widgets/TouchImageView$State;

.field public static final enum FLING:Lcom/biznessapps/widgets/TouchImageView$State;

.field public static final enum NONE:Lcom/biznessapps/widgets/TouchImageView$State;

.field public static final enum ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/widgets/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->NONE:Lcom/biznessapps/widgets/TouchImageView$State;

    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$State;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/widgets/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->DRAG:Lcom/biznessapps/widgets/TouchImageView$State;

    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$State;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/widgets/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;

    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$State;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v5}, Lcom/biznessapps/widgets/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->FLING:Lcom/biznessapps/widgets/TouchImageView$State;

    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$State;

    const-string v1, "ANIMATE_ZOOM"

    invoke-direct {v0, v1, v6}, Lcom/biznessapps/widgets/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->ANIMATE_ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/biznessapps/widgets/TouchImageView$State;

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->NONE:Lcom/biznessapps/widgets/TouchImageView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->DRAG:Lcom/biznessapps/widgets/TouchImageView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->FLING:Lcom/biznessapps/widgets/TouchImageView$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->ANIMATE_ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->$VALUES:[Lcom/biznessapps/widgets/TouchImageView$State;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/widgets/TouchImageView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/biznessapps/widgets/TouchImageView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/TouchImageView$State;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/widgets/TouchImageView$State;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/biznessapps/widgets/TouchImageView$State;->$VALUES:[Lcom/biznessapps/widgets/TouchImageView$State;

    invoke-virtual {v0}, [Lcom/biznessapps/widgets/TouchImageView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/widgets/TouchImageView$State;

    return-object v0
.end method

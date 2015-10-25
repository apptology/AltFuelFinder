.class public final enum Lcom/biznessapps/widgets/progressbar/ProgressButton$States;
.super Ljava/lang/Enum;
.source "ProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/progressbar/ProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/widgets/progressbar/ProgressButton$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

.field public static final enum PAUSED:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

.field public static final enum PENDING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

.field public static final enum PLAYING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

.field public static final enum WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    .line 27
    new-instance v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PENDING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    .line 28
    new-instance v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PLAYING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    .line 29
    new-instance v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PAUSED:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    sget-object v1, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->WAITING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PENDING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PLAYING:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    aput-object v1, v0, v4

    sget-object v1, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->PAUSED:Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    aput-object v1, v0, v5

    sput-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->$VALUES:[Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/widgets/progressbar/ProgressButton$States;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/widgets/progressbar/ProgressButton$States;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->$VALUES:[Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    invoke-virtual {v0}, [Lcom/biznessapps/widgets/progressbar/ProgressButton$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/widgets/progressbar/ProgressButton$States;

    return-object v0
.end method

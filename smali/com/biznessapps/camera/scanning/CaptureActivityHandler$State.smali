.class final enum Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/camera/scanning/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 44
    new-instance v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 45
    new-instance v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->DONE:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    sget-object v1, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->DONE:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->$VALUES:[Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->$VALUES:[Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    return-object v0
.end method

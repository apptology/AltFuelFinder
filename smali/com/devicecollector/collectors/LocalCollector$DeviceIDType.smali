.class final enum Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;
.super Ljava/lang/Enum;
.source "LocalCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devicecollector/collectors/LocalCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceIDType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

.field public static final enum ANDROID_ID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

.field public static final enum ANDROID_SERIAL:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

.field public static final enum MAC_HASH:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

.field public static final enum UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    const-string v1, "ANDROID_ID"

    invoke-direct {v0, v1, v2}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_ID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    .line 60
    new-instance v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    const-string v1, "ANDROID_SERIAL"

    invoke-direct {v0, v1, v3}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_SERIAL:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    .line 64
    new-instance v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    const-string v1, "MAC_HASH"

    invoke-direct {v0, v1, v4}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->MAC_HASH:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    .line 68
    new-instance v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    const-string v1, "UID"

    invoke-direct {v0, v1, v5}, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    sget-object v1, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_ID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->ANDROID_SERIAL:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->MAC_HASH:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->UID:Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->$VALUES:[Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    return-object v0
.end method

.method public static values()[Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->$VALUES:[Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    invoke-virtual {v0}, [Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devicecollector/collectors/LocalCollector$DeviceIDType;

    return-object v0
.end method

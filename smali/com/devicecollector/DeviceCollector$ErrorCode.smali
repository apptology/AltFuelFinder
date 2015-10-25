.class public final enum Lcom/devicecollector/DeviceCollector$ErrorCode;
.super Ljava/lang/Enum;
.source "DeviceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devicecollector/DeviceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devicecollector/DeviceCollector$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devicecollector/DeviceCollector$ErrorCode;

.field public static final enum INVALID_MERCHANT:Lcom/devicecollector/DeviceCollector$ErrorCode;

.field public static final enum INVALID_SESSION:Lcom/devicecollector/DeviceCollector$ErrorCode;

.field public static final enum INVALID_URL:Lcom/devicecollector/DeviceCollector$ErrorCode;

.field public static final enum MERCHANT_CANCELLED:Lcom/devicecollector/DeviceCollector$ErrorCode;

.field public static final enum NO_NETWORK:Lcom/devicecollector/DeviceCollector$ErrorCode;

.field public static final enum RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    new-instance v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/devicecollector/DeviceCollector$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->NO_NETWORK:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 184
    new-instance v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    const-string v1, "INVALID_URL"

    invoke-direct {v0, v1, v4}, Lcom/devicecollector/DeviceCollector$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_URL:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 189
    new-instance v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    const-string v1, "INVALID_MERCHANT"

    invoke-direct {v0, v1, v5}, Lcom/devicecollector/DeviceCollector$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_MERCHANT:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 194
    new-instance v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    const-string v1, "INVALID_SESSION"

    invoke-direct {v0, v1, v6}, Lcom/devicecollector/DeviceCollector$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_SESSION:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 199
    new-instance v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    const-string v1, "MERCHANT_CANCELLED"

    invoke-direct {v0, v1, v7}, Lcom/devicecollector/DeviceCollector$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->MERCHANT_CANCELLED:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 204
    new-instance v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    const-string v1, "RUNTIME_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/devicecollector/DeviceCollector$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;

    .line 175
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/devicecollector/DeviceCollector$ErrorCode;

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->NO_NETWORK:Lcom/devicecollector/DeviceCollector$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_URL:Lcom/devicecollector/DeviceCollector$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_MERCHANT:Lcom/devicecollector/DeviceCollector$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->INVALID_SESSION:Lcom/devicecollector/DeviceCollector$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devicecollector/DeviceCollector$ErrorCode;->MERCHANT_CANCELLED:Lcom/devicecollector/DeviceCollector$ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/devicecollector/DeviceCollector$ErrorCode;->RUNTIME_FAILURE:Lcom/devicecollector/DeviceCollector$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->$VALUES:[Lcom/devicecollector/DeviceCollector$ErrorCode;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devicecollector/DeviceCollector$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/DeviceCollector$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/devicecollector/DeviceCollector$ErrorCode;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/devicecollector/DeviceCollector$ErrorCode;->$VALUES:[Lcom/devicecollector/DeviceCollector$ErrorCode;

    invoke-virtual {v0}, [Lcom/devicecollector/DeviceCollector$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devicecollector/DeviceCollector$ErrorCode;

    return-object v0
.end method

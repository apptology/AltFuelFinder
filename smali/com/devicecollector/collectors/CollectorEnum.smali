.class public final enum Lcom/devicecollector/collectors/CollectorEnum;
.super Ljava/lang/Enum;
.source "CollectorEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devicecollector/collectors/CollectorEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devicecollector/collectors/CollectorEnum;

.field public static final enum DEVICE_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

.field public static final enum GEO_LOCATION:Lcom/devicecollector/collectors/CollectorEnum;

.field public static final enum MAC_ADDRESS:Lcom/devicecollector/collectors/CollectorEnum;

.field public static final enum USER_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

.field public static final enum WEB:Lcom/devicecollector/collectors/CollectorEnum;


# instance fields
.field private postValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/devicecollector/collectors/CollectorEnum;

    const-string v1, "MAC_ADDRESS"

    const-string v2, "collector_mac_addrs"

    invoke-direct {v0, v1, v3, v2}, Lcom/devicecollector/collectors/CollectorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/CollectorEnum;->MAC_ADDRESS:Lcom/devicecollector/collectors/CollectorEnum;

    .line 31
    new-instance v0, Lcom/devicecollector/collectors/CollectorEnum;

    const-string v1, "WEB"

    const-string v2, "collector_web"

    invoke-direct {v0, v1, v4, v2}, Lcom/devicecollector/collectors/CollectorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/CollectorEnum;->WEB:Lcom/devicecollector/collectors/CollectorEnum;

    .line 36
    new-instance v0, Lcom/devicecollector/collectors/CollectorEnum;

    const-string v1, "DEVICE_COOKIE"

    const-string v2, "collector_device_cookie"

    invoke-direct {v0, v1, v5, v2}, Lcom/devicecollector/collectors/CollectorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/CollectorEnum;->DEVICE_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

    .line 41
    new-instance v0, Lcom/devicecollector/collectors/CollectorEnum;

    const-string v1, "USER_COOKIE"

    const-string v2, "collector_user_cookie"

    invoke-direct {v0, v1, v6, v2}, Lcom/devicecollector/collectors/CollectorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/CollectorEnum;->USER_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

    .line 46
    new-instance v0, Lcom/devicecollector/collectors/CollectorEnum;

    const-string v1, "GEO_LOCATION"

    const-string v2, "collector_geo_loc"

    invoke-direct {v0, v1, v7, v2}, Lcom/devicecollector/collectors/CollectorEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/CollectorEnum;->GEO_LOCATION:Lcom/devicecollector/collectors/CollectorEnum;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/devicecollector/collectors/CollectorEnum;

    sget-object v1, Lcom/devicecollector/collectors/CollectorEnum;->MAC_ADDRESS:Lcom/devicecollector/collectors/CollectorEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devicecollector/collectors/CollectorEnum;->WEB:Lcom/devicecollector/collectors/CollectorEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devicecollector/collectors/CollectorEnum;->DEVICE_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devicecollector/collectors/CollectorEnum;->USER_COOKIE:Lcom/devicecollector/collectors/CollectorEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devicecollector/collectors/CollectorEnum;->GEO_LOCATION:Lcom/devicecollector/collectors/CollectorEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/devicecollector/collectors/CollectorEnum;->$VALUES:[Lcom/devicecollector/collectors/CollectorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/devicecollector/collectors/CollectorEnum;->postValue:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devicecollector/collectors/CollectorEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/devicecollector/collectors/CollectorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/CollectorEnum;

    return-object v0
.end method

.method public static values()[Lcom/devicecollector/collectors/CollectorEnum;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/devicecollector/collectors/CollectorEnum;->$VALUES:[Lcom/devicecollector/collectors/CollectorEnum;

    invoke-virtual {v0}, [Lcom/devicecollector/collectors/CollectorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devicecollector/collectors/CollectorEnum;

    return-object v0
.end method


# virtual methods
.method public postValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/devicecollector/collectors/CollectorEnum;->postValue:Ljava/lang/String;

    return-object v0
.end method

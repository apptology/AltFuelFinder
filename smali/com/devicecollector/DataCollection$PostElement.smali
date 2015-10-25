.class public final enum Lcom/devicecollector/DataCollection$PostElement;
.super Ljava/lang/Enum;
.source "DataCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devicecollector/DataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devicecollector/DataCollection$PostElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum ERROR_LIST:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum GEO_DATE:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum GEO_PROVIDER:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum LATITUDE:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum LONGITUDE:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum MERCHANT_ID:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum MOBILE_MODEL:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum OLD_DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum OS_VERSION:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum SDK_TYPE:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum SDK_VERSION:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum SESSION_ID:Lcom/devicecollector/DataCollection$PostElement;

.field public static final enum USER_COOKIE:Lcom/devicecollector/DataCollection$PostElement;


# instance fields
.field private postField:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "LATITUDE"

    const-string v2, "lat"

    invoke-direct {v0, v1, v4, v2}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->LATITUDE:Lcom/devicecollector/DataCollection$PostElement;

    .line 30
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "LONGITUDE"

    const-string v2, "lon"

    invoke-direct {v0, v1, v5, v2}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->LONGITUDE:Lcom/devicecollector/DataCollection$PostElement;

    .line 34
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "GEO_DATE"

    const-string v2, "ltm"

    invoke-direct {v0, v1, v6, v2}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->GEO_DATE:Lcom/devicecollector/DataCollection$PostElement;

    .line 38
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "GEO_PROVIDER"

    const-string v2, "lpv"

    invoke-direct {v0, v1, v7, v2}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->GEO_PROVIDER:Lcom/devicecollector/DataCollection$PostElement;

    .line 42
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "OLD_DEVICE_COOKIE"

    const-string v2, "odc"

    invoke-direct {v0, v1, v8, v2}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->OLD_DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    .line 46
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "DEVICE_COOKIE"

    const/4 v2, 0x5

    const-string v3, "dc"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    .line 50
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "USER_COOKIE"

    const/4 v2, 0x6

    const-string v3, "uc"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->USER_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    .line 54
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "OS_VERSION"

    const/4 v2, 0x7

    const-string v3, "os"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->OS_VERSION:Lcom/devicecollector/DataCollection$PostElement;

    .line 58
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "SDK_VERSION"

    const/16 v2, 0x8

    const-string v3, "sv"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->SDK_VERSION:Lcom/devicecollector/DataCollection$PostElement;

    .line 62
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "SDK_TYPE"

    const/16 v2, 0x9

    const-string v3, "st"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->SDK_TYPE:Lcom/devicecollector/DataCollection$PostElement;

    .line 66
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "MOBILE_MODEL"

    const/16 v2, 0xa

    const-string v3, "mdl"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->MOBILE_MODEL:Lcom/devicecollector/DataCollection$PostElement;

    .line 70
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "ERROR_LIST"

    const/16 v2, 0xb

    const-string v3, "err"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->ERROR_LIST:Lcom/devicecollector/DataCollection$PostElement;

    .line 74
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "MERCHANT_ID"

    const/16 v2, 0xc

    const-string v3, "m"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->MERCHANT_ID:Lcom/devicecollector/DataCollection$PostElement;

    .line 78
    new-instance v0, Lcom/devicecollector/DataCollection$PostElement;

    const-string v1, "SESSION_ID"

    const/16 v2, 0xd

    const-string v3, "s"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/DataCollection$PostElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->SESSION_ID:Lcom/devicecollector/DataCollection$PostElement;

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/devicecollector/DataCollection$PostElement;

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->LATITUDE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->LONGITUDE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->GEO_DATE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->GEO_PROVIDER:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v1, v0, v7

    sget-object v1, Lcom/devicecollector/DataCollection$PostElement;->OLD_DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->DEVICE_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->USER_COOKIE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->OS_VERSION:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->SDK_VERSION:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->SDK_TYPE:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->MOBILE_MODEL:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->ERROR_LIST:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->MERCHANT_ID:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/devicecollector/DataCollection$PostElement;->SESSION_ID:Lcom/devicecollector/DataCollection$PostElement;

    aput-object v2, v0, v1

    sput-object v0, Lcom/devicecollector/DataCollection$PostElement;->$VALUES:[Lcom/devicecollector/DataCollection$PostElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/devicecollector/DataCollection$PostElement;->postField:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devicecollector/DataCollection$PostElement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/devicecollector/DataCollection$PostElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/DataCollection$PostElement;

    return-object v0
.end method

.method public static values()[Lcom/devicecollector/DataCollection$PostElement;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/devicecollector/DataCollection$PostElement;->$VALUES:[Lcom/devicecollector/DataCollection$PostElement;

    invoke-virtual {v0}, [Lcom/devicecollector/DataCollection$PostElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devicecollector/DataCollection$PostElement;

    return-object v0
.end method


# virtual methods
.method public postField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/devicecollector/DataCollection$PostElement;->postField:Ljava/lang/String;

    return-object v0
.end method

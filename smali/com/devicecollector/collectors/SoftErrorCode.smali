.class public final enum Lcom/devicecollector/collectors/SoftErrorCode;
.super Ljava/lang/Enum;
.source "SoftErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devicecollector/collectors/SoftErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devicecollector/collectors/SoftErrorCode;

.field public static final enum MERCHANT_CANCELLED:Lcom/devicecollector/collectors/SoftErrorCode;

.field public static final enum MERCHANT_SKIPPED:Lcom/devicecollector/collectors/SoftErrorCode;

.field public static final enum PERMISSION_DENIED:Lcom/devicecollector/collectors/SoftErrorCode;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

.field public static final enum TIMEOUT:Lcom/devicecollector/collectors/SoftErrorCode;

.field public static final enum UNEXPECTED:Lcom/devicecollector/collectors/SoftErrorCode;


# instance fields
.field private postValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/devicecollector/collectors/SoftErrorCode;

    const-string v1, "MERCHANT_CANCELLED"

    const-string v2, "merchant_cancelled"

    invoke-direct {v0, v1, v4, v2}, Lcom/devicecollector/collectors/SoftErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->MERCHANT_CANCELLED:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 20
    new-instance v0, Lcom/devicecollector/collectors/SoftErrorCode;

    const-string v1, "MERCHANT_SKIPPED"

    const-string v2, "skipped"

    invoke-direct {v0, v1, v5, v2}, Lcom/devicecollector/collectors/SoftErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->MERCHANT_SKIPPED:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 25
    new-instance v0, Lcom/devicecollector/collectors/SoftErrorCode;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "permission_denied"

    invoke-direct {v0, v1, v6, v2}, Lcom/devicecollector/collectors/SoftErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->PERMISSION_DENIED:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 30
    new-instance v0, Lcom/devicecollector/collectors/SoftErrorCode;

    const-string v1, "SERVICE_UNAVAILABLE"

    const-string v2, "not_available"

    invoke-direct {v0, v1, v7, v2}, Lcom/devicecollector/collectors/SoftErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 35
    new-instance v0, Lcom/devicecollector/collectors/SoftErrorCode;

    const-string v1, "TIMEOUT"

    const-string v2, "timeout"

    invoke-direct {v0, v1, v8, v2}, Lcom/devicecollector/collectors/SoftErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->TIMEOUT:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 40
    new-instance v0, Lcom/devicecollector/collectors/SoftErrorCode;

    const-string v1, "UNEXPECTED"

    const/4 v2, 0x5

    const-string v3, "unexpected"

    invoke-direct {v0, v1, v2, v3}, Lcom/devicecollector/collectors/SoftErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->UNEXPECTED:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/devicecollector/collectors/SoftErrorCode;

    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->MERCHANT_CANCELLED:Lcom/devicecollector/collectors/SoftErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->MERCHANT_SKIPPED:Lcom/devicecollector/collectors/SoftErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->PERMISSION_DENIED:Lcom/devicecollector/collectors/SoftErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/devicecollector/collectors/SoftErrorCode;->TIMEOUT:Lcom/devicecollector/collectors/SoftErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/devicecollector/collectors/SoftErrorCode;->UNEXPECTED:Lcom/devicecollector/collectors/SoftErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->$VALUES:[Lcom/devicecollector/collectors/SoftErrorCode;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/devicecollector/collectors/SoftErrorCode;->postValue:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devicecollector/collectors/SoftErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devicecollector/collectors/SoftErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/devicecollector/collectors/SoftErrorCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/devicecollector/collectors/SoftErrorCode;->$VALUES:[Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v0}, [Lcom/devicecollector/collectors/SoftErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devicecollector/collectors/SoftErrorCode;

    return-object v0
.end method


# virtual methods
.method public postValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/devicecollector/collectors/SoftErrorCode;->postValue:Ljava/lang/String;

    return-object v0
.end method

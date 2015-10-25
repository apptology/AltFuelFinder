.class public Lcom/biznessapps/common/entities/NetworkResultEntity;
.super Ljava/lang/Object;
.source "NetworkResultEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCKED_DAY_ERROR:I = 0x8

.field public static final EXCEPTION_STATE:I = -0x4

.field public static final INCORREST_DATA_STATE:I = -0x3

.field public static final MAX_SERVICE_LIMIT_ERROR:I = 0x5

.field public static final NETWORK_FAILURE:I = -0x5

.field public static final NO_ERROR:I = 0x0

.field public static final OK:I = 0xc8

.field public static final REFUSED:I = -0x2

.field public static final TIME_SLOT_FILLED:I = 0x6

.field public static final UNSUCCESS_RESULT:I = -0x1

.field private static final serialVersionUID:J = -0x4585391c71a6521fL


# instance fields
.field private background:Ljava/lang/String;

.field private errorCode:I

.field private exception:Ljava/lang/Exception;

.field private hasCorrectData:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xc8

    iput v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->errorCode:I

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->errorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hasBackground()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->background:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCorrectData()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasCorrectData:Z

    return v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->errorCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->errorCode:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->background:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->errorCode:I

    .line 47
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->exception:Ljava/lang/Exception;

    .line 55
    const/4 v0, -0x4

    iput v0, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->errorCode:I

    .line 56
    return-void
.end method

.method public setHasCorrectData(Z)V
    .locals 0
    .param p1, "hasCorrectData"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasCorrectData:Z

    .line 84
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/common/entities/NetworkResultEntity;->message:Ljava/lang/String;

    .line 64
    return-void
.end method

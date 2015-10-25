.class public Lcom/biznessapps/common/entities/CommonEntity;
.super Ljava/lang/Object;
.source "CommonEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/biznessapps/constants/AppConstants;


# static fields
.field private static final serialVersionUID:J = -0x6d6155aa3701ce75L


# instance fields
.field protected description:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected imageUrl:Ljava/lang/String;

.field private networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

.field private object:Ljava/lang/Object;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->title:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/entities/CommonEntity;->description:Ljava/lang/String;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonEntity;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    const-string p1, ""

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonEntity;->id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonEntity;->imageUrl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonEntity;->object:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/common/entities/CommonEntity;->title:Ljava/lang/String;

    .line 60
    return-void
.end method

.class public Lcom/biznessapps/messages/MessageEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "MessageEntity.java"


# static fields
.field public static final MESSAGE_All_TYPE:I = 0x0

.field public static final MESSAGE_TAB_CONTENT_TYPE:I = 0x2

.field public static final MESSAGE_TEMPLATE_TYPE:I = 0x3

.field public static final MESSAGE_WEB_URL_TYPE:I = 0x1

.field private static final serialVersionUID:J = -0x656227e01658e338L


# instance fields
.field private activeTill:J

.field private categoryId:Ljava/lang/String;

.field private detailId:Ljava/lang/String;

.field private isDeleted:Z

.field private isGeoFencingEnabled:Z

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private paths:Ljava/lang/String;

.field private radius:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveTill()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/biznessapps/messages/MessageEntity;->activeTill:J

    return-wide v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->detailId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPaths()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->paths:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->radius:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/messages/MessageEntity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/biznessapps/messages/MessageEntity;->type:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/biznessapps/messages/MessageEntity;->isDeleted:Z

    return v0
.end method

.method public isGeoFencingEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/biznessapps/messages/MessageEntity;->isGeoFencingEnabled:Z

    return v0
.end method

.method public setActiveTill(J)V
    .locals 0
    .param p1, "activeTill"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/biznessapps/messages/MessageEntity;->activeTill:J

    .line 121
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->categoryId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "isDeleted"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/biznessapps/messages/MessageEntity;->isDeleted:Z

    .line 129
    return-void
.end method

.method public setDetailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->detailId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setGeoFencingEnabled(Z)V
    .locals 0
    .param p1, "isGeoFencingEnabled"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/biznessapps/messages/MessageEntity;->isGeoFencingEnabled:Z

    .line 113
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->latitude:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->longitude:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPaths(Ljava/lang/String;)V
    .locals 0
    .param p1, "paths"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->paths:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setRadius(Ljava/lang/String;)V
    .locals 0
    .param p1, "radius"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->radius:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/messages/MessageEntity;->tabId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/biznessapps/messages/MessageEntity;->type:I

    .line 49
    return-void
.end method

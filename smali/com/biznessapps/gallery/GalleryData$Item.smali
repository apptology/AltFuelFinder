.class public Lcom/biznessapps/gallery/GalleryData$Item;
.super Ljava/lang/Object;
.source "GalleryData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/gallery/GalleryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10bb559038ccdab9L


# instance fields
.field private bgBlueEffectRadius:I

.field private bgOverlayColor:I

.field private bgUrl:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private fullUrl:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private isFile:Z

.field private tag:Ljava/lang/Object;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgBlueEffectRadius:I

    .line 137
    iput v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgOverlayColor:I

    return-void
.end method


# virtual methods
.method public getBGBlueEffectRadius()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgBlueEffectRadius:I

    return v0
.end method

.method public getBGOverlayColor()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgOverlayColor:I

    return v0
.end method

.method public getBGUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getFullUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/UrlWrapper;->getGalleryPrevewUrlFormat()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "urlFormat":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryData$Item;->getExt()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "prevUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .end local v0    # "prevUrl":Ljava/lang/String;
    .end local v1    # "urlFormat":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->fullUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->width:Ljava/lang/String;

    return-object v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryData$Item;->isFile:Z

    return v0
.end method

.method public setBGBlueEffectRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgBlueEffectRadius:I

    .line 163
    return-void
.end method

.method public setBGOverlayColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgOverlayColor:I

    .line 171
    return-void
.end method

.method public setBGUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "bgUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->bgUrl:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->ext:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setFullUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullUrl"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->fullUrl:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->height:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->id:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->info:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setIsFile(Z)V
    .locals 0
    .param p1, "isFile"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->isFile:Z

    .line 233
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->tag:Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData$Item;->width:Ljava/lang/String;

    .line 209
    return-void
.end method

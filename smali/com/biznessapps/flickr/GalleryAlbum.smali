.class public Lcom/biznessapps/flickr/GalleryAlbum;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "GalleryAlbum.java"


# static fields
.field private static final serialVersionUID:J = 0x52e98bda93801d7cL


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useCoverflow:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/biznessapps/flickr/GalleryAlbum;->items:Ljava/util/List;

    return-object v0
.end method

.method public getItemsUrls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/biznessapps/flickr/GalleryAlbum;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 56
    .local v1, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/UrlWrapper;->getGalleryThumbplayUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "urlFormat":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getExt()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .end local v3    # "urlFormat":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 65
    .end local v1    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/biznessapps/flickr/GalleryAlbum;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/biznessapps/flickr/GalleryAlbum;->getItemsUrls()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/flickr/GalleryAlbum;->urls:Ljava/util/List;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/flickr/GalleryAlbum;->urls:Ljava/util/List;

    return-object v0
.end method

.method public isUseCoverflow()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/biznessapps/flickr/GalleryAlbum;->useCoverflow:Z

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/flickr/GalleryAlbum;->items:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/flickr/GalleryAlbum;->urls:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setUseCoverflow(Z)V
    .locals 0
    .param p1, "useCoverflow"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/biznessapps/flickr/GalleryAlbum;->useCoverflow:Z

    .line 30
    return-void
.end method

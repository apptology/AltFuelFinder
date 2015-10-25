.class public Lcom/biznessapps/gallery/GalleryData;
.super Ljava/lang/Object;
.source "GalleryData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/gallery/GalleryData$Item;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64d2601d39360f7cL


# instance fields
.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/GalleryAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private apiKey:Ljava/lang/String;

.field private background:Ljava/lang/String;

.field private displayPhotosets:Z

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

.field private tag:Ljava/lang/Object;

.field private useCoverflow:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryData;->items:Ljava/util/List;

    .line 127
    return-void
.end method


# virtual methods
.method public getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/GalleryAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData;->background:Ljava/lang/String;

    return-object v0
.end method

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
    .line 97
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData;->items:Ljava/util/List;

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
    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/biznessapps/gallery/GalleryData;->items:Ljava/util/List;

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

    .line 84
    .local v1, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/UrlWrapper;->getGalleryThumbplayUrlFormat()Ljava/lang/String;

    move-result-object v3

    .line 86
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

    .line 91
    .end local v3    # "urlFormat":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 93
    .end local v1    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisplayPhotosets()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryData;->displayPhotosets:Z

    return v0
.end method

.method public isUseCoverflow()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryData;->useCoverflow:Z

    return v0
.end method

.method public setAlbums(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/GalleryAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData;->albums:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData;->apiKey:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData;->background:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setDisplayPhotosets(Z)V
    .locals 0
    .param p1, "displayPhotosets"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryData;->displayPhotosets:Z

    .line 70
    return-void
.end method

.method public setImageItems(Ljava/util/List;)V
    .locals 5
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
    .line 105
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/biznessapps/gallery/GalleryData$Item;

    invoke-direct {v1}, Lcom/biznessapps/gallery/GalleryData$Item;-><init>()V

    .line 108
    .local v1, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {v1, v3}, Lcom/biznessapps/gallery/GalleryData$Item;->setFullUrl(Ljava/lang/String;)V

    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v1    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Lcom/biznessapps/gallery/GalleryData;->items:Ljava/util/List;

    .line 112
    return-void
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
    .line 101
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData;->items:Ljava/util/List;

    .line 102
    return-void
.end method

.method public setUseCoverflow(Z)V
    .locals 0
    .param p1, "useCoverflow"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryData;->useCoverflow:Z

    .line 78
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryData;->userId:Ljava/lang/String;

    .line 54
    return-void
.end method

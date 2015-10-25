.class public Lcom/biznessapps/gallery/GalleryFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "GalleryFragment.java"


# instance fields
.field private galleryData:Lcom/biznessapps/gallery/GalleryData;

.field private isFlickrUsed:Z

.field private isInstagramUsed:Z

.field private isPicasaUsed:Z

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method private addInstagramImages(Lcom/biznessapps/gallery/GalleryData;)V
    .locals 7
    .param p1, "galleryData"    # Lcom/biznessapps/gallery/GalleryData;

    .prologue
    const/4 v6, 0x0

    .line 196
    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "https://api.instagram.com/v1/users/%s/media/recent/?access_token=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData;->getUserId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/biznessapps/gallery/GalleryData;->getApiKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "imagesUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "metadata":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/biznessapps/utils/json/JsonParser;->parseInstagramImages(Lcom/biznessapps/gallery/GalleryData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    goto :goto_0

    .line 205
    .end local v0    # "imagesUrl":Ljava/lang/String;
    .end local v1    # "metadata":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private defineFlickrAlbums(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "usePhotosets"    # Z
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v4, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    if-eqz p1, :cond_6

    .line 220
    const-string v20, "https://api.flickr.com/services/rest/?method=flickr.photosets.getList&api_key=%s&user_id=%s&per_page=500&format=json&nojsoncallback=1"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p2, v21, v22

    const/16 v22, 0x1

    aput-object p3, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "getPhotosetsUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 222
    .local v15, "photoSetsData":Ljava/lang/String;
    invoke-static {v15}, Lcom/biznessapps/utils/json/JsonParser;->getPhotosets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 223
    .local v17, "photosetsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/Photoset;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 224
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/flickr/Photoset;

    .line 225
    .local v10, "item":Lcom/biznessapps/flickr/Photoset;
    new-instance v3, Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-direct {v3}, Lcom/biznessapps/flickr/GalleryAlbum;-><init>()V

    .line 226
    .local v3, "album":Lcom/biznessapps/flickr/GalleryAlbum;
    const-string v20, "https://api.flickr.com/services/rest/?method=flickr.photosets.getPhotos&api_key=%s&photoset_id=%s&extras=url_m&per_page=500&format=json&nojsoncallback=1"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p2, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getId()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, "photosUrlFormat":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "photoSData":Ljava/lang/String;
    invoke-static {v14}, Lcom/biznessapps/utils/json/JsonParser;->getPhotosInPhotoset(Ljava/lang/String;)Lcom/biznessapps/flickr/Photoset;

    move-result-object v11

    .line 229
    .local v11, "p":Lcom/biznessapps/flickr/Photoset;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/biznessapps/flickr/Photoset;->getPhotos()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 230
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v19, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Lcom/biznessapps/flickr/Photoset;->getPhotos()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/biznessapps/flickr/Photo;

    .line 232
    .local v12, "photo":Lcom/biznessapps/flickr/Photo;
    invoke-virtual {v12}, Lcom/biznessapps/flickr/Photo;->getUrl()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 233
    invoke-virtual {v12}, Lcom/biznessapps/flickr/Photo;->getUrl()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    const-string v20, "https://farm%s.staticflickr.com/%s/%s_%s.jpg"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v12}, Lcom/biznessapps/flickr/Photo;->getFarm()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v12}, Lcom/biznessapps/flickr/Photo;->getServer()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v12}, Lcom/biznessapps/flickr/Photo;->getId()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-virtual {v12}, Lcom/biznessapps/flickr/Photo;->getSecret()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "galleryUrl":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v6    # "galleryUrl":Ljava/lang/String;
    .end local v12    # "photo":Lcom/biznessapps/flickr/Photo;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 241
    const-string v20, "https://farm%s.static.flickr.com/%s/%s_%s_s.jpg"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getFarm()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getServer()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getPrimary()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getSecret()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .restart local v6    # "galleryUrl":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v6    # "galleryUrl":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/biznessapps/flickr/GalleryAlbum;->setUrls(Ljava/util/List;)V

    .line 246
    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getTitle()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getTitle()Ljava/lang/String;

    move-result-object v20

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/biznessapps/flickr/GalleryAlbum;->setTitle(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getDescription()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_5

    invoke-virtual {v10}, Lcom/biznessapps/flickr/Photoset;->getDescription()Ljava/lang/String;

    move-result-object v20

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/biznessapps/flickr/GalleryAlbum;->setDescription(Ljava/lang/String;)V

    .line 248
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 246
    :cond_4
    const-string v20, ""

    goto :goto_2

    .line 247
    :cond_5
    const-string v20, ""

    goto :goto_3

    .line 254
    .end local v3    # "album":Lcom/biznessapps/flickr/GalleryAlbum;
    .end local v7    # "getPhotosetsUrl":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Lcom/biznessapps/flickr/Photoset;
    .end local v11    # "p":Lcom/biznessapps/flickr/Photoset;
    .end local v14    # "photoSData":Ljava/lang/String;
    .end local v15    # "photoSetsData":Ljava/lang/String;
    .end local v16    # "photosUrlFormat":Ljava/lang/String;
    .end local v17    # "photosetsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/Photoset;>;"
    .end local v19    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string v20, "https://api.flickr.com/services/rest/?method=flickr.people.getPhotos&api_key=%s&user_id=%s&format=json&nojsoncallback=1"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p2, v21, v22

    const/16 v22, 0x1

    aput-object p3, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 255
    .local v18, "url":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "data":Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/utils/json/JsonParser;->getPhotoStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 258
    .local v13, "photoItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    new-instance v3, Lcom/biznessapps/flickr/GalleryAlbum;

    invoke-direct {v3}, Lcom/biznessapps/flickr/GalleryAlbum;-><init>()V

    .line 259
    .restart local v3    # "album":Lcom/biznessapps/flickr/GalleryAlbum;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/gallery/GalleryData;->isUseCoverflow()Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/biznessapps/flickr/GalleryAlbum;->setUseCoverflow(Z)V

    .line 260
    invoke-virtual {v3, v13}, Lcom/biznessapps/flickr/GalleryAlbum;->setItems(Ljava/util/List;)V

    .line 261
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v3    # "album":Lcom/biznessapps/flickr/GalleryAlbum;
    .end local v5    # "data":Ljava/lang/String;
    .end local v13    # "photoItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    .end local v18    # "url":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/biznessapps/gallery/GalleryData;->setAlbums(Ljava/util/List;)V

    .line 264
    return-void
.end method

.method private definePicasaAlbums(Ljava/lang/String;)V
    .locals 13
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://picasaweb.google.com/data/feed/api/user/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/utils/PicasaUtils;->getPicasaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "data":Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/utils/PicasaUtils;->parseGalleryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 185
    .local v4, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/GalleryAlbum;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/flickr/GalleryAlbum;

    .line 186
    .local v0, "album":Lcom/biznessapps/flickr/GalleryAlbum;
    const-string v8, "http://picasaweb.google.com/data/feed/api/user/%s/albumid/%s?alt=json&kind=photo"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v12

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/flickr/GalleryAlbum;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "albumPhotosUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v8

    invoke-virtual {v8, v2, v12}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "albumPhotosData":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/PicasaUtils;->parsePhotosList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 189
    .local v3, "albumUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Lcom/biznessapps/flickr/GalleryAlbum;->setUrls(Ljava/util/List;)V

    .line 190
    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 192
    .end local v0    # "album":Lcom/biznessapps/flickr/GalleryAlbum;
    .end local v1    # "albumPhotosData":Ljava/lang/String;
    .end local v2    # "albumPhotosUrl":Ljava/lang/String;
    .end local v3    # "albumUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v8, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v8, v4}, Lcom/biznessapps/gallery/GalleryData;->setAlbums(Ljava/util/List;)V

    .line 193
    return-void
.end method

.method private findFlickrUser(Ljava/lang/String;Ljava/lang/String;)Lcom/biznessapps/flickr/User;
    .locals 6
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    const/4 v2, 0x0

    .line 213
    :goto_0
    return-object v2

    .line 211
    :cond_1
    const-string v2, "https://api.flickr.com/services/rest/?method=flickr.people.findByEmail&api_key=%s&find_email=%s&per_page=500&format=json&nojsoncallback=1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "findUserUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->parseFlickrUser(Ljava/lang/String;)Lcom/biznessapps/flickr/User;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->isPicasaUsed:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PICASA_DATA_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->isFlickrUsed:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FLICKR_DATA_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    goto :goto_0

    .line 173
    :cond_1
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->isInstagramUsed:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTAGRAM_DATA_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GALLERY_DATA_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/gallery/GalleryData;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/biznessapps/gallery/GalleryFragment;->isPicasaUsed:Z

    if-eqz v1, :cond_0

    .line 91
    const-string v0, "picasa.php?app_code=%s&tab_id=%s"

    .line 99
    .local v0, "coreUrlFormat":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    .end local v0    # "coreUrlFormat":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/biznessapps/gallery/GalleryFragment;->isFlickrUsed:Z

    if-eqz v1, :cond_1

    .line 93
    const-string v0, "flickr.php?app_code=%s&tab_id=%s"

    .restart local v0    # "coreUrlFormat":Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0    # "coreUrlFormat":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/biznessapps/gallery/GalleryFragment;->isInstagramUsed:Z

    if-eqz v1, :cond_2

    .line 95
    const-string v0, "instagram.php?app_code=%s&tab_id=%s"

    .restart local v0    # "coreUrlFormat":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0    # "coreUrlFormat":Ljava/lang/String;
    :cond_2
    const-string v0, "gallery_list.php?app_code=%s&tab_id=%s"

    .restart local v0    # "coreUrlFormat":Ljava/lang/String;
    goto :goto_0
.end method

.method public isFlickrUsed()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->isFlickrUsed:Z

    return v0
.end method

.method public isInstagramUsed()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->isInstagramUsed:Z

    return v0
.end method

.method public isPicasaUsed()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->isPicasaUsed:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    sget v0, Lcom/biznessapps/layout/R$layout;->gallery_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->root:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->initSettingsData()V

    .line 76
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->loadData()V

    .line 77
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 78
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/gallery/GalleryFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 79
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFlickrUsed(Z)V
    .locals 0
    .param p1, "isFlickrUsed"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryFragment;->isFlickrUsed:Z

    .line 62
    return-void
.end method

.method public setInstagramUsed(Z)V
    .locals 0
    .param p1, "isInstagramUsed"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryFragment;->isInstagramUsed:Z

    .line 70
    return-void
.end method

.method public setPicasaUsed(Z)V
    .locals 0
    .param p1, "isPicasaUsed"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/biznessapps/gallery/GalleryFragment;->isPicasaUsed:Z

    .line 54
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 7
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-boolean v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->isPicasaUsed:Z

    if-eqz v4, :cond_0

    .line 107
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parsePicasaData(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 108
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/biznessapps/gallery/GalleryFragment;->definePicasaAlbums(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PICASA_DATA_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 135
    .local v1, "isDataStored":Z
    :goto_0
    return v1

    .line 110
    .end local v1    # "isDataStored":Z
    :cond_0
    iget-boolean v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->isInstagramUsed:Z

    if-eqz v4, :cond_1

    .line 111
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseInstagramData(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 112
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {p0, v4}, Lcom/biznessapps/gallery/GalleryFragment;->addInstagramImages(Lcom/biznessapps/gallery/GalleryData;)V

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSTAGRAM_DATA_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "isDataStored":Z
    goto :goto_0

    .line 114
    .end local v1    # "isDataStored":Z
    :cond_1
    iget-boolean v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->isFlickrUsed:Z

    if-eqz v4, :cond_4

    .line 115
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseFlickrData(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 116
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->getApiKey()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "apiKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "userId":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/biznessapps/gallery/GalleryFragment;->findFlickrUser(Ljava/lang/String;Ljava/lang/String;)Lcom/biznessapps/flickr/User;

    move-result-object v2

    .line 119
    .local v2, "u":Lcom/biznessapps/flickr/User;
    if-nez v2, :cond_2

    .line 120
    const-string v0, "ddcec7e1e0a8ce1e598fb3f3edfdfda9"

    .line 121
    invoke-direct {p0, v0, v3}, Lcom/biznessapps/gallery/GalleryFragment;->findFlickrUser(Ljava/lang/String;Ljava/lang/String;)Lcom/biznessapps/flickr/User;

    move-result-object v2

    .line 122
    if-nez v2, :cond_2

    .line 123
    const-string v0, "684dbcf343eead1f82a18c1c09859df9"

    .line 124
    invoke-direct {p0, v0, v3}, Lcom/biznessapps/gallery/GalleryFragment;->findFlickrUser(Ljava/lang/String;Ljava/lang/String;)Lcom/biznessapps/flickr/User;

    move-result-object v2

    .line 127
    :cond_2
    if-eqz v2, :cond_3

    .line 128
    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4}, Lcom/biznessapps/gallery/GalleryData;->isDisplayPhotosets()Z

    move-result v4

    invoke-virtual {v2}, Lcom/biznessapps/flickr/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v0, v5}, Lcom/biznessapps/gallery/GalleryFragment;->defineFlickrAlbums(ZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FLICKR_DATA_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 131
    .restart local v1    # "isDataStored":Z
    goto/16 :goto_0

    .line 132
    .end local v0    # "apiKey":Ljava/lang/String;
    .end local v1    # "isDataStored":Z
    .end local v2    # "u":Lcom/biznessapps/flickr/User;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseGalleryMetadata(Ljava/lang/String;)Lcom/biznessapps/gallery/GalleryData;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GALLERY_DATA_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "isDataStored":Z
    goto/16 :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 140
    iget-object v3, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    if-eqz v3, :cond_1

    .line 142
    iget-boolean v3, p0, Lcom/biznessapps/gallery/GalleryFragment;->isInstagramUsed:Z

    if-nez v3, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "GALLERY_LISTVIEW_FRAGMENT"

    invoke-static {v4}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "tabParam":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v3, v4}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryData(Lcom/biznessapps/gallery/GalleryData;)V

    .line 148
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "BG_URL_EXTRA"

    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GALLERY_LISTVIEW_FRAGMENT"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "tabParam":Ljava/lang/String;
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/gallery/GalleryActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v1, "openGalleryIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager;->getInstance()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    invoke-virtual {v3, v4}, Lcom/biznessapps/gallery/GalleryManager;->setGalleryData(Lcom/biznessapps/gallery/GalleryData;)V

    .line 157
    const-string v3, "BG_URL_EXTRA"

    iget-object v4, p0, Lcom/biznessapps/gallery/GalleryFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 163
    .end local v1    # "openGalleryIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/gallery/GalleryFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->nothing_found:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method

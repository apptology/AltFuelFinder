.class public Lcom/biznessapps/music/AlbumEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "AlbumEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x7eb17f8bbfa52e0aL


# instance fields
.field private albumName:Ljava/lang/String;

.field private albumUrl:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private isExtended:Z

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->tracks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->albumUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongsCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->tracks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/music/AlbumEntity;->tracks:Ljava/util/List;

    return-object v0
.end method

.method public isExtended()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/biznessapps/music/AlbumEntity;->isExtended:Z

    return v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/biznessapps/music/AlbumEntity;->albumName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAlbumUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/biznessapps/music/AlbumEntity;->albumUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/music/AlbumEntity;->artistName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setExtended(Z)V
    .locals 0
    .param p1, "isExtended"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/biznessapps/music/AlbumEntity;->isExtended:Z

    .line 64
    return-void
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/music/PlaylistEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/music/PlaylistEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/music/AlbumEntity;->tracks:Ljava/util/List;

    .line 32
    return-void
.end method

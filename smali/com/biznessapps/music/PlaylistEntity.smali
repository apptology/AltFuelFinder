.class public Lcom/biznessapps/music/PlaylistEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "PlaylistEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x21bd49c8169a6c3eL


# instance fields
.field private album:Ljava/lang/String;

.field private albumArt:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private background:Ljava/lang/String;

.field private duration:I

.field private header:Ljava/lang/String;

.field private itune:Ljava/lang/String;

.field private onSale:I

.field private previewUrl:Ljava/lang/String;

.field private tintColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->albumArt:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/biznessapps/music/PlaylistEntity;->duration:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getItune()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->itune:Ljava/lang/String;

    return-object v0
.end method

.method public getOnSale()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/biznessapps/music/PlaylistEntity;->onSale:I

    return v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTintColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/music/PlaylistEntity;->tintColor:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->album:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setAlbumArt(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumArt"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->albumArt:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->artist:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->background:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/biznessapps/music/PlaylistEntity;->duration:I

    .line 99
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->header:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setItune(Ljava/lang/String;)V
    .locals 0
    .param p1, "itune"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->itune:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOnSale(I)V
    .locals 0
    .param p1, "onSale"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/biznessapps/music/PlaylistEntity;->onSale:I

    .line 67
    return-void
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->previewUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTintColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tintColor"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/music/PlaylistEntity;->tintColor:Ljava/lang/String;

    .line 91
    return-void
.end method

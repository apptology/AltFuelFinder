.class public Lcom/biznessapps/flickr/Photoset;
.super Ljava/lang/Object;
.source "Photoset.java"


# instance fields
.field private description:Ljava/lang/String;

.field private farm:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private primary:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->farm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->photos:Ljava/util/List;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->primary:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/flickr/Photoset;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->description:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setFarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "farm"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->farm:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPhotos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/flickr/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/flickr/Photo;>;"
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->photos:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setPrimary(Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->primary:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->secret:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->server:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/biznessapps/flickr/Photoset;->title:Ljava/lang/String;

    .line 36
    return-void
.end method

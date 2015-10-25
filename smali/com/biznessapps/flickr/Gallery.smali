.class public Lcom/biznessapps/flickr/Gallery;
.super Ljava/lang/Object;
.source "Gallery.java"


# instance fields
.field private farm:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private photosArray:[Lcom/biznessapps/flickr/Photo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo"
    .end annotation
.end field

.field private primary:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private title:Lcom/biznessapps/flickr/Title;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->farm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotosArray()[Lcom/biznessapps/flickr/Photo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->photosArray:[Lcom/biznessapps/flickr/Photo;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->primary:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Lcom/biznessapps/flickr/Title;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/flickr/Gallery;->title:Lcom/biznessapps/flickr/Title;

    return-object v0
.end method

.method public setFarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "farm"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->farm:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPhotosArray([Lcom/biznessapps/flickr/Photo;)V
    .locals 0
    .param p1, "photosArray"    # [Lcom/biznessapps/flickr/Photo;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->photosArray:[Lcom/biznessapps/flickr/Photo;

    .line 57
    return-void
.end method

.method public setPrimary(Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->primary:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->secret:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->server:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTitle(Lcom/biznessapps/flickr/Title;)V
    .locals 0
    .param p1, "title"    # Lcom/biznessapps/flickr/Title;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/flickr/Gallery;->title:Lcom/biznessapps/flickr/Title;

    .line 51
    return-void
.end method

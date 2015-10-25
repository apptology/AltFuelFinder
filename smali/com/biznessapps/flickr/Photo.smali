.class public Lcom/biznessapps/flickr/Photo;
.super Ljava/lang/Object;
.source "Photo.java"


# instance fields
.field private farm:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private server:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/flickr/Photo;->farm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/biznessapps/flickr/Photo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/flickr/Photo;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/flickr/Photo;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/flickr/Photo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/flickr/Photo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFarm(Ljava/lang/String;)V
    .locals 0
    .param p1, "farm"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/flickr/Photo;->farm:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/flickr/Photo;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/biznessapps/flickr/Photo;->secret:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/biznessapps/flickr/Photo;->server:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/flickr/Photo;->title:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/flickr/Photo;->url:Ljava/lang/String;

    .line 32
    return-void
.end method

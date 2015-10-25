.class public Lcom/biznessapps/flickr/RespGalleryPhotos;
.super Ljava/lang/Object;
.source "RespGalleryPhotos.java"


# instance fields
.field private photos:Lcom/biznessapps/flickr/Photos;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotos()Lcom/biznessapps/flickr/Photos;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/biznessapps/flickr/RespGalleryPhotos;->photos:Lcom/biznessapps/flickr/Photos;

    return-object v0
.end method

.method public setPhotos(Lcom/biznessapps/flickr/Photos;)V
    .locals 0
    .param p1, "photos"    # Lcom/biznessapps/flickr/Photos;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/biznessapps/flickr/RespGalleryPhotos;->photos:Lcom/biznessapps/flickr/Photos;

    .line 12
    return-void
.end method

.class public Lcom/biznessapps/flickr/Galleries;
.super Ljava/lang/Object;
.source "Galleries.java"


# instance fields
.field private galleriesArray:[Lcom/biznessapps/flickr/Gallery;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gallery"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleriesArray()[Lcom/biznessapps/flickr/Gallery;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/biznessapps/flickr/Galleries;->galleriesArray:[Lcom/biznessapps/flickr/Gallery;

    return-object v0
.end method

.method public setGalleriesArray([Lcom/biznessapps/flickr/Gallery;)V
    .locals 0
    .param p1, "galleriesArray"    # [Lcom/biznessapps/flickr/Gallery;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/biznessapps/flickr/Galleries;->galleriesArray:[Lcom/biznessapps/flickr/Gallery;

    .line 15
    return-void
.end method

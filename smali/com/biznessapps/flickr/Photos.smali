.class public Lcom/biznessapps/flickr/Photos;
.super Ljava/lang/Object;
.source "Photos.java"


# instance fields
.field private photosArray:[Lcom/biznessapps/flickr/Photo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo"
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
.method public getPhotosArray()[Lcom/biznessapps/flickr/Photo;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/biznessapps/flickr/Photos;->photosArray:[Lcom/biznessapps/flickr/Photo;

    return-object v0
.end method

.method public setPhotosArray([Lcom/biznessapps/flickr/Photo;)V
    .locals 0
    .param p1, "photosArray"    # [Lcom/biznessapps/flickr/Photo;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/biznessapps/flickr/Photos;->photosArray:[Lcom/biznessapps/flickr/Photo;

    .line 15
    return-void
.end method

.class public Lcom/biznessapps/gallery/GalleryManager;
.super Ljava/lang/Object;
.source "GalleryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/gallery/GalleryManager$1;,
        Lcom/biznessapps/gallery/GalleryManager$GalleryManagerHolder;
    }
.end annotation


# instance fields
.field private galleryData:Lcom/biznessapps/gallery/GalleryData;

.field private galleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/gallery/GalleryData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/gallery/GalleryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/gallery/GalleryManager$1;

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/gallery/GalleryManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/biznessapps/gallery/GalleryManager;
    .locals 1

    .prologue
    .line 16
    # getter for: Lcom/biznessapps/gallery/GalleryManager$GalleryManagerHolder;->instance:Lcom/biznessapps/gallery/GalleryManager;
    invoke-static {}, Lcom/biznessapps/gallery/GalleryManager$GalleryManagerHolder;->access$100()Lcom/biznessapps/gallery/GalleryManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGalleryData()Lcom/biznessapps/gallery/GalleryData;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryManager;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    return-object v0
.end method

.method public getGalleryItems()Ljava/util/List;
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
    .line 23
    iget-object v0, p0, Lcom/biznessapps/gallery/GalleryManager;->galleryItems:Ljava/util/List;

    return-object v0
.end method

.method public setGalleryData(Lcom/biznessapps/gallery/GalleryData;)V
    .locals 0
    .param p1, "galleryData"    # Lcom/biznessapps/gallery/GalleryData;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryManager;->galleryData:Lcom/biznessapps/gallery/GalleryData;

    .line 36
    return-void
.end method

.method public setGalleryItems(Ljava/util/List;)V
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
    .line 27
    .local p1, "galleryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    iput-object p1, p0, Lcom/biznessapps/gallery/GalleryManager;->galleryItems:Ljava/util/List;

    .line 28
    return-void
.end method

.class public Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryItem"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private loaderImageView:Lcom/biznessapps/widgets/LoaderImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoaderImage()Lcom/biznessapps/widgets/LoaderImageView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->loaderImageView:Lcom/biznessapps/widgets/LoaderImageView;

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->imageView:Landroid/widget/ImageView;

    .line 260
    return-void
.end method

.method public setLoaderImage(Lcom/biznessapps/widgets/LoaderImageView;)V
    .locals 0
    .param p1, "imageView"    # Lcom/biznessapps/widgets/LoaderImageView;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$GalleryItem;->loaderImageView:Lcom/biznessapps/widgets/LoaderImageView;

    .line 252
    return-void
.end method

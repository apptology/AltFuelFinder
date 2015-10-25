.class Lcom/biznessapps/utils/google/caching/ImageCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/google/caching/ImageCache;->init(Lcom/biznessapps/utils/google/caching/ImageCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/google/caching/ImageCache;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/google/caching/ImageCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lcom/biznessapps/utils/google/caching/ImageCache$1;->this$0:Lcom/biznessapps/utils/google/caching/ImageCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/utils/google/caching/ImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    invoke-static {p2}, Lcom/biznessapps/utils/google/caching/ImageCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v1

    div-int/lit16 v0, v1, 0x400

    .line 127
    .local v0, "bitmapSize":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "bitmapSize":I
    :cond_0
    return v0
.end method

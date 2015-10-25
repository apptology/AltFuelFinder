.class public abstract Lcom/biznessapps/images/BitmapDownloader$BitmapLoadCallback;
.super Ljava/lang/Object;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/images/BitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapLoadCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostImageLoading(Lcom/biznessapps/images/BitmapWrapper;Landroid/view/View;)V
    .locals 2
    .param p1, "bitmapWrapper"    # Lcom/biznessapps/images/BitmapWrapper;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 790
    if-eqz p2, :cond_0

    .line 791
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/biznessapps/images/BitmapWrapper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 793
    :cond_0
    return-void
.end method

.method public onPreImageLoading()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

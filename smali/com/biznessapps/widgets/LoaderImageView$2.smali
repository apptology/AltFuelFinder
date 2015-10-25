.class Lcom/biznessapps/widgets/LoaderImageView$2;
.super Ljava/lang/Object;
.source "LoaderImageView.java"

# interfaces
.implements Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/LoaderImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/LoaderImageView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/LoaderImageView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    .line 214
    .local v1, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/LoaderImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    # setter for: Lcom/biznessapps/widgets/LoaderImageView;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Lcom/biznessapps/widgets/LoaderImageView;->access$002(Lcom/biznessapps/widgets/LoaderImageView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/biznessapps/widgets/LoaderImageView;->access$300(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-interface {v2, p1, p2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 234
    .end local v1    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :goto_0
    return-void

    .line 221
    .restart local v1    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/biznessapps/widgets/LoaderImageView;->access$300(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v1    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/biznessapps/widgets/LoaderImageView;->access$300(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->getLoadCallback()Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-interface {v2, p1, v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/widgets/LoaderImageView$2;->this$0:Lcom/biznessapps/widgets/LoaderImageView;

    # getter for: Lcom/biznessapps/widgets/LoaderImageView;->imageLoadedHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/biznessapps/widgets/LoaderImageView;->access$300(Lcom/biznessapps/widgets/LoaderImageView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.class public Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;
.super Landroid/os/AsyncTask;
.source "BackgroundComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/home_screen/components/BackgroundComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetHomeBgAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/ViewGroup;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->activity:Landroid/app/Activity;

    .line 140
    iput-object p2, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->view:Landroid/view/View;

    .line 141
    iput-object p3, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->url:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 150
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v3, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "downloadedBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 152
    iget-object v3, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 155
    :cond_0
    const/16 v3, 0x1e

    invoke-static {v0, v3}, Lcom/biznessapps/utils/BlurEffectUtils;->addBlurEffect(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 158
    .end local v0    # "downloadedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "resultBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 162
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 163
    const/4 v2, 0x2

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 164
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    .line 165
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v4

    .line 166
    aget-object v2, v1, v4

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->getOpacity(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 167
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 168
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/components/BackgroundComponent$SetHomeBgAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.class Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;
.super Landroid/os/AsyncTask;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;


# direct methods
.method private constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Lcom/biznessapps/home_screen/HomeScreenActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p2, "x1"    # Lcom/biznessapps/home_screen/HomeScreenActivity$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 548
    const/4 v2, 0x0

    .line 549
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 552
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 553
    .local v0, "downloadedBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 554
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 555
    invoke-virtual {v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/biznessapps/utils/google/caching/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 557
    :cond_0
    const/16 v3, 0x55

    invoke-static {v0, v3}, Lcom/biznessapps/utils/BlurEffectUtils;->addBlurEffect(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 559
    .end local v0    # "downloadedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 544
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "resultBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    .line 563
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    if-eqz v3, :cond_0

    .line 564
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    sget v4, Lcom/biznessapps/layout/R$id;->home_menu_root:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 565
    .local v0, "homeMenuView":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_0

    .line 566
    const/4 v3, 0x2

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 567
    .local v2, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v4, v2, v3

    .line 568
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v2, v5

    .line 569
    aget-object v3, v2, v5

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->getOpacity(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 570
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 571
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    .end local v0    # "homeMenuView":Landroid/widget/FrameLayout;
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 544
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

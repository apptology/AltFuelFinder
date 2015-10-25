.class public Lcom/biznessapps/real_estate/RealEstateDetailActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "RealEstateDetailActivity.java"


# static fields
.field public static final N_A:Ljava/lang/String; = "N/A"


# instance fields
.field private addressInfo:Ljava/lang/String;

.field private callUsButton:Landroid/widget/TextView;

.field private directionButton:Landroid/widget/TextView;

.field private emailUsButton:Landroid/widget/TextView;

.field private handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private info:Lcom/biznessapps/real_estate/RealEstateEntity;

.field private itemId:Ljava/lang/String;

.field private parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private propertyDetailLinkContainer:Landroid/view/ViewGroup;

.field private shareButton:Landroid/widget/ImageView;

.field private tabId:Ljava/lang/String;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->canUseCaching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->handleInBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/real_estate/RealEstateDetailActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->tryParseData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/biznessapps/real_estate/RealEstateDetailActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateDetailActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->updateControlsWithData(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    return-object v0
.end method

.method private canUseCaching()Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAL_ESTATE_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/real_estate/RealEstateEntity;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 119
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    return-void
.end method

.method private handleInBackground()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method private initCommonInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 260
    sget v8, Lcom/biznessapps/layout/R$id;->address_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    .local v0, "addressView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 262
    .local v6, "priceView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->bedroom_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 263
    .local v1, "bedroomView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->shower_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 264
    .local v7, "showerView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->distance_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, "distanceView":Landroid/widget/TextView;
    sget v8, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 266
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->addressInfo:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v8

    const-string v9, "N/A"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v9}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPriceUnit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v9}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_0
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBeds()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBaths()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-static {v8, v2, v9}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 276
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    sget v8, Lcom/biznessapps/layout/R$id;->right_arrow:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 283
    sget v8, Lcom/biznessapps/layout/R$id;->detail_container:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 284
    .local v4, "itemContainer":Landroid/view/View;
    sget v8, Lcom/biznessapps/layout/R$drawable;->rs_item_detail_bg:I

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->bgUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 286
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x78

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 287
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->callUsButton:Landroid/widget/TextView;

    invoke-static {v8, v10}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 288
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->emailUsButton:Landroid/widget/TextView;

    invoke-static {v8, v10}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 289
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->directionButton:Landroid/widget/TextView;

    invoke-static {v8, v10}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 292
    :cond_0
    const/4 v5, 0x0

    .line 293
    .local v5, "leftDrawableIndex":I
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v9, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v9}, Lcom/biznessapps/real_estate/RealEstateEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 300
    return-void

    .line 271
    .end local v4    # "itemContainer":Landroid/view/View;
    .end local v5    # "leftDrawableIndex":I
    :cond_1
    sget v8, Lcom/biznessapps/layout/R$string;->n_a:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private initGallery()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 217
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getGallery()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 218
    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v8}, Lcom/biznessapps/real_estate/RealEstateEntity;->getGallery()Ljava/util/List;

    move-result-object v4

    .line 219
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    sget v8, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 220
    .local v0, "gallery":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 221
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/gallery/GalleryData$Item;

    .line 222
    .local v3, "item":Lcom/biznessapps/gallery/GalleryData$Item;
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    invoke-static {v8, v9}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 223
    .local v7, "view":Landroid/view/ViewGroup;
    sget v8, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/LoaderImageView;

    .line 224
    .local v2, "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    invoke-virtual {v2, v11, v10}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 225
    invoke-virtual {v3}, Lcom/biznessapps/gallery/GalleryData$Item;->getFullUrl()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 227
    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&width=256"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 233
    :cond_0
    :goto_1
    new-instance v5, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 234
    .local v5, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-virtual {v5, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 235
    invoke-virtual {v5, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 236
    invoke-virtual {v5, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v5, v10}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 238
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 239
    invoke-virtual {v5, v10}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 241
    invoke-virtual {v2, v6, v5}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 242
    new-instance v8, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;

    invoke-direct {v8, p0, v4, v3}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$6;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;Ljava/util/List;Lcom/biznessapps/gallery/GalleryData$Item;)V

    invoke-virtual {v2, v8}, Lcom/biznessapps/widgets/LoaderImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 230
    .end local v5    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?width=256"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 257
    .end local v0    # "gallery":Landroid/widget/LinearLayout;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imageView":Lcom/biznessapps/widgets/LoaderImageView;
    .end local v3    # "item":Lcom/biznessapps/gallery/GalleryData$Item;
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/gallery/GalleryData$Item;>;"
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->callUsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$7;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->directionButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$8;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->emailUsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$9;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->propertyDetailLinkContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    return-void
.end method

.method private initSections()V
    .locals 21

    .prologue
    .line 303
    sget v17, Lcom/biznessapps/layout/R$id;->property_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 304
    .local v12, "propertyContainer":Landroid/view/ViewGroup;
    sget v17, Lcom/biznessapps/layout/R$id;->data_container:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->propertyDetailLinkContainer:Landroid/view/ViewGroup;

    .line 306
    sget v17, Lcom/biznessapps/layout/R$id;->header_container:I

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->property:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 307
    sget v17, Lcom/biznessapps/layout/R$id;->description_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->description:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 308
    sget v17, Lcom/biznessapps/layout/R$id;->listed_by_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    sget v18, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->listed_by:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v4

    .line 311
    .local v4, "dataContainerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v4, v0}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 313
    sget v17, Lcom/biznessapps/layout/R$id;->description_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 314
    sget v17, Lcom/biznessapps/layout/R$id;->listed_by_container:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 316
    sget v17, Lcom/biznessapps/layout/R$id;->type_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_type:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 317
    sget v17, Lcom/biznessapps/layout/R$id;->status_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_status:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/real_estate/RealEstateEntity;->getStatus()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, "locStatus":Ljava/lang/String;
    sget v17, Lcom/biznessapps/layout/R$id;->status_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 320
    sget v17, Lcom/biznessapps/layout/R$id;->year_built_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_year_built:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 321
    sget v17, Lcom/biznessapps/layout/R$id;->year_updated_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_year_updated:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 322
    sget v17, Lcom/biznessapps/layout/R$id;->property_size_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_property_size:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 323
    sget v17, Lcom/biznessapps/layout/R$id;->property_size_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getSqft()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 324
    sget v17, Lcom/biznessapps/layout/R$id;->lot_size_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_lot_size:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/real_estate/RealEstateEntity;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 329
    .local v14, "type":Ljava/lang/String;
    sget v17, Lcom/biznessapps/layout/R$string;->n_a:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, "na":Ljava/lang/String;
    sget v17, Lcom/biznessapps/layout/R$id;->type_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 331
    const/4 v9, 0x0

    .line 332
    .local v9, "lotSizeValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 334
    .local v13, "propertySizeValue":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/real_estate/RealEstateEntity;->getLotSize()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 335
    .local v8, "lotSize":F
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/real_estate/RealEstateEntity;->getLotUnit()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, "lotUnit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/real_estate/RealEstateEntity;->getLotSize()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyValue(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 337
    const-string v17, "%.2f %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 343
    :goto_0
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/real_estate/RealEstateEntity;->getHouseUnit()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 345
    .local v6, "houseUnit":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 346
    sget v17, Lcom/biznessapps/layout/R$string;->real_estate_lotunit_sqft:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 348
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/real_estate/RealEstateEntity;->getSqft()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyValue(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 349
    const-string v17, "%.2f %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/biznessapps/real_estate/RealEstateEntity;->getSqft()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 356
    .end local v6    # "houseUnit":Ljava/lang/String;
    .end local v8    # "lotSize":F
    .end local v10    # "lotUnit":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/real_estate/RealEstateEntity;->getYearUpdated()I

    move-result v17

    if-lez v17, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getYearUpdated()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 357
    .local v16, "yearUpdated":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/real_estate/RealEstateEntity;->getYearBuild()I

    move-result v17

    if-lez v17, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getYearBuild()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 358
    .local v15, "yearBuild":Ljava/lang/String;
    :goto_3
    sget v17, Lcom/biznessapps/layout/R$id;->year_updated_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 359
    sget v17, Lcom/biznessapps/layout/R$id;->year_built_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 361
    sget v17, Lcom/biznessapps/layout/R$id;->property_size_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 362
    sget v17, Lcom/biznessapps/layout/R$id;->lot_size_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 364
    sget v17, Lcom/biznessapps/layout/R$id;->description_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getDescription()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 366
    sget v17, Lcom/biznessapps/layout/R$id;->agent_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_agent:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 367
    sget v17, Lcom/biznessapps/layout/R$id;->agent_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAgent()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 368
    sget v17, Lcom/biznessapps/layout/R$id;->email_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_email:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 369
    sget v17, Lcom/biznessapps/layout/R$id;->email_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getEmail()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 370
    sget v17, Lcom/biznessapps/layout/R$id;->phone_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v18, Lcom/biznessapps/layout/R$string;->real_estate_phone:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 371
    sget v17, Lcom/biznessapps/layout/R$id;->phone_value_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->customizeSectionsTextViews(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 373
    sget v17, Lcom/biznessapps/layout/R$id;->property_detail_arrow_view:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 374
    .local v3, "arrowView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v17

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 375
    return-void

    .line 339
    .end local v3    # "arrowView":Landroid/widget/ImageView;
    .end local v15    # "yearBuild":Ljava/lang/String;
    .end local v16    # "yearUpdated":Ljava/lang/String;
    .restart local v8    # "lotSize":F
    .restart local v10    # "lotUnit":Ljava/lang/String;
    :cond_1
    move-object v9, v11

    goto/16 :goto_0

    .line 351
    .restart local v6    # "houseUnit":Ljava/lang/String;
    :cond_2
    move-object v13, v11

    goto/16 :goto_1

    .line 353
    .end local v6    # "houseUnit":Ljava/lang/String;
    .end local v8    # "lotSize":F
    .end local v10    # "lotUnit":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 354
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v16, v11

    .line 356
    goto/16 :goto_2

    .restart local v16    # "yearUpdated":Ljava/lang/String;
    :cond_4
    move-object v15, v11

    .line 357
    goto/16 :goto_3
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 182
    sget v0, Lcom/biznessapps/layout/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 184
    sget v0, Lcom/biznessapps/layout/R$id;->call_us_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->callUsButton:Landroid/widget/TextView;

    .line 185
    sget v0, Lcom/biznessapps/layout/R$id;->direction_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->directionButton:Landroid/widget/TextView;

    .line 186
    sget v0, Lcom/biznessapps/layout/R$id;->email_us_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->emailUsButton:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->callUsButton:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->call_us:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->directionButton:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->directions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->emailUsButton:Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    sget v0, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->shareButton:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/real_estate/RealEstateDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$5;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->callUsButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 202
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->emailUsButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 203
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->directionButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 204
    return-void
.end method

.method private loadBgUrl()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBackground()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBackground()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->bgUrl:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 113
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->bgUrl:Ljava/lang/String;

    sget v2, Lcom/biznessapps/layout/R$id;->root_layout:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 115
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    return-void
.end method

.method private loadContent()V
    .locals 7

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TEXT_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->addressInfo:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->canUseCaching()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-direct {p0, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->updateControlsWithData(Landroid/app/Activity;)V

    .line 166
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->tabId:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ITEM_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->itemId:Ljava/lang/String;

    .line 130
    const-string v3, "realestate_detail.php?app_code=%s&id=%s&tab_id=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->itemId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->tabId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "requestUrl":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v0, Lcom/biznessapps/api/LoadDataTaskExternal;

    invoke-direct {v0, p0, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 135
    .local v0, "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    invoke-virtual {v0, v1}, Lcom/biznessapps/api/LoadDataTaskExternal;->setRequestUrl(Ljava/lang/String;)V

    .line 136
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$1;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 142
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 143
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateDetailActivity$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$2;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 149
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 150
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateDetailActivity$3;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$3;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 156
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 157
    new-instance v3, Lcom/biznessapps/real_estate/RealEstateDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity$4;-><init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V

    iput-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 163
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;->setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 164
    invoke-virtual {v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->launch()V

    goto :goto_0
.end method

.method private tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseRealEstateItem(Ljava/lang/String;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 105
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REAL_ESTATE_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->loadBgUrl()V

    .line 208
    sget v0, Lcom/biznessapps/layout/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->addPins(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 210
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initCommonInfo()V

    .line 211
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initSections()V

    .line 212
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initListeners()V

    .line 213
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initGallery()V

    .line 214
    return-void
.end method


# virtual methods
.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 175
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LOCATION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/biznessapps/layout/R$layout;->real_estate_detail_layout:I

    return v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 94
    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    .local v0, "progressBarContainer":Landroid/view/ViewGroup;
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initAdsWithAlpha()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initViews()V

    .line 77
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->loadContent()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onResume()V

    .line 88
    sget v0, Lcom/biznessapps/layout/R$id;->contact_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 89
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->loadBgUrl()V

    .line 90
    return-void
.end method

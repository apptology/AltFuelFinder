.class Lcom/biznessapps/news/NewsFragment$SearchAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/news/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/news/SearchEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private imageMargin:I

.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/biznessapps/news/NewsFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/news/NewsFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->this$0:Lcom/biznessapps/news/NewsFragment;

    .line 295
    sget v0, Lcom/biznessapps/layout/R$layout;->news_item_layout:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 296
    iput-object p3, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->items:Ljava/util/List;

    .line 297
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 298
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$dimen;->thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->imageMargin:I

    .line 299
    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/news/NewsFragment$SearchAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/news/NewsFragment$SearchAdapter;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setExtendedMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/news/NewsFragment$SearchAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/news/NewsFragment$SearchAdapter;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setUsualMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    return-void
.end method

.method private setExtendedMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    .locals 2
    .param p1, "descriptionView"    # Landroid/widget/TextView;
    .param p2, "nameDateContainer"    # Landroid/view/ViewGroup;
    .param p3, "isImageExist"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 404
    if-eqz p3, :cond_0

    .line 405
    iget v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->imageMargin:I

    invoke-static {p1, v0, p4}, Lcom/biznessapps/utils/ViewUtils;->setSpannableExtendedText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 407
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 408
    invoke-direct {p0, p1, v1, p3}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 409
    invoke-direct {p0, p2, v1, p3}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 410
    return-void
.end method

.method private setMargin(Landroid/view/View;IZ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "margin"    # I
    .param p3, "isImageExist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p3, :cond_0

    move v0, p2

    .line 399
    .local v0, "leftMargin":I
    :goto_0
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 400
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    return-void

    .end local v0    # "leftMargin":I
    :cond_0
    move v0, v2

    .line 398
    goto :goto_0
.end method

.method private setUsualMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V
    .locals 1
    .param p1, "descriptionView"    # Landroid/widget/TextView;
    .param p2, "nameDateContainer"    # Landroid/view/ViewGroup;
    .param p3, "isImageExist"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 414
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->imageMargin:I

    invoke-direct {p0, p1, v0, p3}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 416
    iget v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->imageMargin:I

    invoke-direct {p0, p2, v0, p3}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 417
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 303
    if-nez p2, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/biznessapps/layout/R$layout;->news_item_layout:I

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 306
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->items:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/news/SearchEntity;

    .line 307
    .local v3, "item":Lcom/biznessapps/news/SearchEntity;
    if-eqz v3, :cond_6

    .line 308
    sget v1, Lcom/biznessapps/layout/R$id;->title_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 309
    .local v13, "titleView":Landroid/widget/TextView;
    sget v1, Lcom/biznessapps/layout/R$id;->description_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 311
    .local v5, "descriptionView":Landroid/widget/TextView;
    sget v1, Lcom/biznessapps/layout/R$id;->name_date_container:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 312
    .local v6, "nameDateContainer":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->date_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 313
    .local v8, "dateView":Landroid/widget/TextView;
    sget v1, Lcom/biznessapps/layout/R$id;->point_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 314
    .local v11, "pointView":Landroid/widget/TextView;
    sget v1, Lcom/biznessapps/layout/R$id;->name_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 315
    .local v10, "nameView":Landroid/widget/TextView;
    sget v1, Lcom/biznessapps/layout/R$id;->row_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 317
    .local v9, "iconView":Landroid/widget/ImageView;
    sget v1, Lcom/biznessapps/layout/R$id;->share_news_button:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 318
    .local v12, "shareButton":Landroid/widget/ImageView;
    new-instance v1, Lcom/biznessapps/news/NewsFragment$SearchAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/biznessapps/news/NewsFragment$SearchAdapter$1;-><init>(Lcom/biznessapps/news/NewsFragment$SearchAdapter;)V

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemTextColor()I

    move-result v1

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 327
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_0
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_2
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->this$0:Lcom/biznessapps/news/NewsFragment;

    invoke-virtual {v1}, Lcom/biznessapps/news/NewsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/DateUtils;->getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_3
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    .line 342
    .local v14, "url":Ljava/lang/String;
    invoke-static {v14}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    .line 343
    .local v7, "isImageExist":Z
    if-eqz v7, :cond_8

    .line 344
    const-string v1, "http://"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://"

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 347
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v1, v14, v9}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedImage(Ljava/lang/String;Landroid/view/View;)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->imageMargin:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v7}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 353
    sget v1, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 354
    .local v4, "arrowNavigationView":Landroid/widget/ImageView;
    new-instance v1, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/biznessapps/news/NewsFragment$SearchAdapter$2;-><init>(Lcom/biznessapps/news/NewsFragment$SearchAdapter;Lcom/biznessapps/news/SearchEntity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 375
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setExtendedMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    .line 376
    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemTextColor()I

    move-result v1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->hasColor()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 384
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemColor()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemTextColor()I

    move-result v1

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/widget/TextView;

    const/4 v15, 0x0

    aput-object v13, v2, v15

    const/4 v15, 0x1

    aput-object v5, v2, v15

    const/4 v15, 0x2

    aput-object v8, v2, v15

    const/4 v15, 0x3

    aput-object v10, v2, v15

    const/4 v15, 0x4

    aput-object v11, v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 388
    .end local v4    # "arrowNavigationView":Landroid/widget/ImageView;
    .end local v5    # "descriptionView":Landroid/widget/TextView;
    .end local v6    # "nameDateContainer":Landroid/view/ViewGroup;
    .end local v7    # "isImageExist":Z
    .end local v8    # "dateView":Landroid/widget/TextView;
    .end local v9    # "iconView":Landroid/widget/ImageView;
    .end local v10    # "nameView":Landroid/widget/TextView;
    .end local v11    # "pointView":Landroid/widget/TextView;
    .end local v12    # "shareButton":Landroid/widget/ImageView;
    .end local v13    # "titleView":Landroid/widget/TextView;
    .end local v14    # "url":Ljava/lang/String;
    :cond_6
    return-object p2

    .line 330
    .restart local v5    # "descriptionView":Landroid/widget/TextView;
    .restart local v6    # "nameDateContainer":Landroid/view/ViewGroup;
    .restart local v8    # "dateView":Landroid/widget/TextView;
    .restart local v9    # "iconView":Landroid/widget/ImageView;
    .restart local v10    # "nameView":Landroid/widget/TextView;
    .restart local v11    # "pointView":Landroid/widget/TextView;
    .restart local v12    # "shareButton":Landroid/widget/ImageView;
    .restart local v13    # "titleView":Landroid/widget/TextView;
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 350
    .restart local v7    # "isImageExist":Z
    .restart local v14    # "url":Ljava/lang/String;
    :cond_8
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 378
    .restart local v4    # "arrowNavigationView":Landroid/widget/ImageView;
    :cond_9
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->setUsualMode(Landroid/widget/TextView;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    .line 379
    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 393
    iget-object v0, p0, Lcom/biznessapps/news/NewsFragment$SearchAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/news/SearchEntity;

    invoke-virtual {v0}, Lcom/biznessapps/news/SearchEntity;->getNewsSource()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

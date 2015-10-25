.class public Lcom/biznessapps/info_items/InfoDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "InfoDetailFragment.java"


# static fields
.field private static final LINK_TEXT_TEMPLATE:Ljava/lang/String; = "Can not see the above content correctly? Click here"


# instance fields
.field private buttonContainer:Landroid/view/ViewGroup;

.field protected commentsButton:Landroid/widget/Button;

.field protected commentsTabContainer:Landroid/view/ViewGroup;

.field private customUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headerImage:Ljava/lang/String;

.field private headerImageColorView:Landroid/widget/ImageView;

.field protected headerImageView:Landroid/widget/ImageView;

.field protected infoButton:Landroid/widget/Button;

.field protected infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

.field protected infoTabContainer:Landroid/view/ViewGroup;

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field protected tabId:Ljava/lang/String;

.field protected webView:Lcom/biznessapps/widgets/SmartWebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->customUrls:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->customUrls:Ljava/util/List;

    const-string v1, "inigobar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/biznessapps/info_items/InfoDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/info_items/InfoDetailFragment$1;-><init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/info_items/InfoDetailFragment;Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/info_items/InfoDetailFragment;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/info_items/InfoDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonToActivate"    # Landroid/widget/Button;
    .param p2, "tabToActivate"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 270
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 274
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    return-void
.end method

.method private loadContent(Landroid/app/Activity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "htmlDescription":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    sget v0, Lcom/biznessapps/layout/R$string;->info_tier_link_message:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "replacement":Ljava/lang/String;
    :goto_0
    const-string v0, "Can not see the above content correctly? Click here"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Can not see the above content correctly? Click here"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "Can not see the above content correctly? Click here"

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0, v2}, Lcom/biznessapps/info_items/InfoDetailFragment;->useWithoutZooming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebViewWithoutZooming(Landroid/webkit/WebView;)V

    .line 289
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/SmartWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_1
    return-void

    .line 287
    .restart local v6    # "replacement":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    goto :goto_1
.end method

.method private useWithoutZooming(Ljava/lang/String;)Z
    .locals 3
    .param p1, "htmlDescription"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->customUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v2, 0x1

    .line 299
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected canHaveNewDesign()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 228
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "bgUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 198
    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    return-object v0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 113
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SECTION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setCatId(Ljava/lang/String;)V

    .line 115
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "HAS_NEW_DESIGN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    .local v0, "hasNewDesign":Z
    if-eqz v0, :cond_0

    sget v1, Lcom/biznessapps/layout/R$layout;->info_detail_new_layout:I

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/biznessapps/layout/R$layout;->info_detail_layout:I

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    const-string v0, "info_item_detail.php?id=%s&tab_id=%s&platform=android&app_code=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->itemId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->info_container_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->initAdsWithAlpha()V

    .line 108
    return-void
.end method

.method protected initViews()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 126
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->event_new_buttons_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    .line 127
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->event_info_tab_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    .line 128
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->comments_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    .line 129
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->event_new_info_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    .line 130
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->info_header_image:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageView:Landroid/widget/ImageView;

    .line 131
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->info_header_image_color:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageColorView:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "HEADER_IMAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImage:Ljava/lang/String;

    .line 135
    new-instance v8, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 136
    .local v8, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 137
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImage:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v8, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 139
    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 140
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 142
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->event_new_info_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    .line 143
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->event_new_comments_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsButton:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/info_items/InfoDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/info_items/InfoDetailFragment$2;-><init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/info_items/InfoDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/info_items/InfoDetailFragment$3;-><init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/info_items/InfoDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 160
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 161
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 164
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments()Z

    move-result v9

    .line 165
    .local v9, "shouldHideComments":Z
    if-eqz v9, :cond_1

    .line 166
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->commentsButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    .end local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v9    # "shouldHideComments":Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/SmartWebView;

    iput-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    .line 176
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    new-instance v2, Lcom/biznessapps/info_items/InfoDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/info_items/InfoDetailFragment$4;-><init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/SmartWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 186
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->webView:Lcom/biznessapps/widgets/SmartWebView;

    new-instance v2, Lcom/biznessapps/info_items/InfoDetailFragment$5;

    invoke-direct {v2, p0}, Lcom/biznessapps/info_items/InfoDetailFragment$5;-><init>(Lcom/biznessapps/info_items/InfoDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/SmartWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 192
    return-void

    .line 168
    .restart local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .restart local v9    # "shouldHideComments":Z
    :cond_1
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->itemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/api/UiSettings;I)V

    .line 170
    .local v0, "socialCommentComponent":Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->setEnableListViewScroll(Z)V

    .line 171
    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->initSettingsData()V

    .line 85
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 86
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/info_items/InfoDetailFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->initViews()V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->loadData()V

    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->tabId:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->openCustomDialogs()V

    .line 93
    iget-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 99
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 103
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->tabId:Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseInfo(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 222
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 237
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 240
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->canHaveNewDesign()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 242
    iget-object v4, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->hasNewDesign()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageColorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 245
    iget-object v4, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->hasNewDesign()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageColorView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/CommonListEntity;->hasNewDesign()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getHeaderImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 249
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 250
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getHeaderImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 252
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 253
    invoke-virtual {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 254
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->headerImageColorView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 258
    .end local v0    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/info_items/InfoDetailFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-direct {p0, p1}, Lcom/biznessapps/info_items/InfoDetailFragment;->loadContent(Landroid/app/Activity;)V

    .line 261
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 242
    goto :goto_0

    :cond_4
    move v1, v3

    .line 245
    goto :goto_1

    :cond_5
    move v2, v3

    .line 246
    goto :goto_2
.end method

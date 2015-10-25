.class public Lcom/biznessapps/youtube/YoutubeDetailFragment;
.super Lcom/biznessapps/fan_wall/FanWallFragment;
.source "YoutubeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/youtube/YoutubeDetailFragment$ViewHolder;,
        Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;,
        Lcom/biznessapps/youtube/YoutubeDetailFragment$AllowCommentingTask;,
        Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;
    }
.end annotation


# instance fields
.field private buttonContainer:Landroid/view/ViewGroup;

.field private commentsButton:Landroid/widget/Button;

.field private commentsLabel:Landroid/widget/TextView;

.field protected commentsTabContainer:Landroid/view/ViewGroup;

.field private dataContainer:Landroid/view/ViewGroup;

.field private imageUrl:Ljava/lang/String;

.field private infoAdapter:Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;

.field private infoButton:Landroid/widget/Button;

.field protected infoTabContainer:Landroid/view/ViewGroup;

.field private isCheckedCommentAllowing:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private note:Ljava/lang/String;

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private postButton:Landroid/widget/Button;

.field private shareButton:Landroid/widget/ImageView;

.field private webView:Landroid/webkit/WebView;

.field private youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

.field private youtubeItemImage:Landroid/widget/ImageView;

.field private youtubeLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment$1;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .line 402
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/youtube/YoutubeDetailFragment;Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->isCheckedCommentAllowing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/biznessapps/youtube/YoutubeDetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->isCheckedCommentAllowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->postComment()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Lcom/biznessapps/player/PlayerServiceAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getPlayerServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/youtube/YoutubeDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/youtube/YoutubeDetailFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method private activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonToActivate"    # Landroid/widget/Button;
    .param p2, "tabToActivate"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 296
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 300
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 305
    return-void
.end method

.method private getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment$6;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    return-object v0
.end method

.method private initYoutubeInfoData()V
    .locals 13

    .prologue
    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;>;"
    new-instance v10, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;

    sget v11, Lcom/biznessapps/layout/R$string;->title:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-virtual {v12}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v10, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;

    sget v11, Lcom/biznessapps/layout/R$string;->author:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-virtual {v12}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getCreator()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v10, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;

    sget v11, Lcom/biznessapps/layout/R$string;->posted_date:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-virtual {v12}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .local v7, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;

    .line 236
    .local v3, "item":Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v7, v10}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v3    # "item":Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoItem;
    :cond_0
    new-instance v10, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v10, p0, v11, v7, v12}, Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    iput-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoAdapter:Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;

    .line 239
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->info_list_view:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/widgets/RefreshableListView;

    .line 240
    .local v5, "listView":Lcom/biznessapps/widgets/RefreshableListView;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoAdapter:Lcom/biznessapps/youtube/YoutubeDetailFragment$YoutubeInfoAdapter;

    invoke-virtual {v5, v10}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 243
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->youtube_data_container:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 244
    .local v9, "youtubeDataContainer":Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 246
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->count_hint_text:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    .local v0, "countHintView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->rating_average_text:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 248
    .local v6, "ratingAverageView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    sget v11, Lcom/biznessapps/layout/R$id;->view_count_text:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 250
    .local v8, "viewCountView":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "leftDrawableIndex":I
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v10

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-static {v10, v11}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v10

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-static {v10, v11}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-static {v10, v11}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-virtual {v10}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getFeedlinkCountHint()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-virtual {v10}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getCounts()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v10, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    invoke-virtual {v10}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getStatisticsViewCount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private loadImageBg()V
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 287
    .local v0, "hasHeaderBg":Z
    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItemImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 290
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->imageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItemImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadYoutubeImage(Ljava/lang/String;Landroid/view/View;)V

    .line 292
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    return-void

    .line 287
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private loadWebContent()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->note:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 310
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->note:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method private postComment()V
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    const-string v0, "youtube_comments.php?id=%s&show_all=1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->itemId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->dataContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showAdsIfNeeded(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 125
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    sget v1, Lcom/biznessapps/layout/R$id;->youtube_item_image:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItemImage:Landroid/widget/ImageView;

    .line 130
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItemImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v1, Lcom/biznessapps/layout/R$id;->youtube_play_item_image:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LINK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeLink:Ljava/lang/String;

    .line 134
    sget v1, Lcom/biznessapps/layout/R$id;->comments_list_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->listView:Landroid/widget/ListView;

    .line 136
    sget v1, Lcom/biznessapps/layout/R$id;->data_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->dataContainer:Landroid/view/ViewGroup;

    .line 137
    sget v1, Lcom/biznessapps/layout/R$id;->event_new_buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    .line 138
    sget v1, Lcom/biznessapps/layout/R$id;->info_tab_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoTabContainer:Landroid/view/ViewGroup;

    .line 139
    sget v1, Lcom/biznessapps/layout/R$id;->comments_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    .line 140
    sget v1, Lcom/biznessapps/layout/R$id;->event_new_info_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoButton:Landroid/widget/Button;

    .line 141
    sget v1, Lcom/biznessapps/layout/R$id;->event_new_comments_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;

    .line 142
    sget v1, Lcom/biznessapps/layout/R$id;->post_comment_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->postButton:Landroid/widget/Button;

    .line 143
    sget v1, Lcom/biznessapps/layout/R$id;->comments_label:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsLabel:Landroid/widget/TextView;

    .line 145
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->postButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->post_comment:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsLabel:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment$2;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment$3;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->postButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment$4;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsTabContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 173
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->buttonContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 174
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->infoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 175
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->postButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 180
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->postButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 182
    sget v1, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->webView:Landroid/webkit/WebView;

    .line 184
    sget v1, Lcom/biznessapps/layout/R$id;->comments_list_top_header:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    .local v0, "commentsTopHeader":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 187
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->dataContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 188
    sget v1, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->shareButton:Landroid/widget/ImageView;

    .line 189
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->shareButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/biznessapps/youtube/YoutubeDetailFragment$5;

    invoke-direct {v2, p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment$5;-><init>(Lcom/biznessapps/youtube/YoutubeDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    sget v0, Lcom/biznessapps/layout/R$layout;->youtube_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->initSettingsData()V

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IMAGE_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->imageUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NOTE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->note:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->itemId:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/youtube/YoutubeRssEntity;

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->youtubeItem:Lcom/biznessapps/youtube/YoutubeRssEntity;

    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BG_URL_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->bgUrl:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 102
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 103
    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->initYoutubeInfoData()V

    .line 105
    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->loadWebContent()V

    .line 106
    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->loadImageBg()V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 108
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->openCustomDialogs()V

    .line 109
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->loadData()V

    .line 110
    iget-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 116
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/fan_wall/FanWallFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseYoutubeComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->items:Ljava/util/List;

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 8
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/biznessapps/fan_wall/FanWallFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 212
    invoke-direct {p0}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->loadImageBg()V

    .line 213
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 214
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 215
    .local v7, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v7, v3, v1}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v7    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/events/EventCommentsAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v4, Lcom/biznessapps/layout/R$layout;->youtube_detail_comment_item:I

    iget-object v5, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/events/EventCommentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 219
    .local v0, "adapter":Lcom/biznessapps/events/EventCommentsAdapter;
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v1, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->commentsLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/biznessapps/youtube/YoutubeDetailFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/youtube/YoutubeDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

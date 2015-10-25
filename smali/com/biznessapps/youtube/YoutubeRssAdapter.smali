.class public Lcom/biznessapps/youtube/YoutubeRssAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "YoutubeRssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/youtube/YoutubeRssEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/youtube/YoutubeRssEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/youtube/YoutubeRssEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->youtube_rss_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    if-nez p2, :cond_2

    .line 34
    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeRssAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/youtube/YoutubeRssAdapter;->layoutItemResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;-><init>()V

    .line 37
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;
    sget v3, Lcom/biznessapps/layout/R$id;->count_hint_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setCountHintTextView(Landroid/widget/TextView;)V

    .line 38
    sget v3, Lcom/biznessapps/layout/R$id;->rating_average_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setRatingAverageTextView(Landroid/widget/TextView;)V

    .line 39
    sget v3, Lcom/biznessapps/layout/R$id;->youtube_item_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setTitleView(Landroid/widget/TextView;)V

    .line 40
    sget v3, Lcom/biznessapps/layout/R$id;->youtube_creator_name:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setCreatorNameView(Landroid/widget/TextView;)V

    .line 41
    sget v3, Lcom/biznessapps/layout/R$id;->youtube_published_date:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setPublishedDateView(Landroid/widget/TextView;)V

    .line 42
    sget v3, Lcom/biznessapps/layout/R$id;->view_count_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setViewCountTextView(Landroid/widget/TextView;)V

    .line 43
    sget v3, Lcom/biznessapps/layout/R$id;->youtube_item_image:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setYoutubeImageView(Landroid/widget/ImageView;)V

    .line 44
    sget v3, Lcom/biznessapps/layout/R$id;->youtube_creator_image:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->setCreatorImageView(Landroid/widget/ImageView;)V

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/youtube/YoutubeRssAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/youtube/YoutubeRssEntity;

    .line 52
    .local v1, "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getCountHintTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getFeedlinkCountHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getRatingAverageTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getCounts()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getViewCountTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getStatisticsViewCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getCreatorNameView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getCreator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getPublishedDateView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeRssAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getYoutubeImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadYoutubeImage(Ljava/lang/String;Landroid/view/View;)V

    .line 63
    iget-object v3, p0, Lcom/biznessapps/youtube/YoutubeRssAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getCreatorAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getCreatorImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 65
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/youtube/YoutubeRssAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getItemTextColor()I

    move-result v3

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getCountHintTextView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getRatingAverageTextView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getViewCountTextView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getTitleView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getPublishedDateView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getCreatorNameView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/youtube/YoutubeRssAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "leftDrawableIndex":I
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getItemTextColor()I

    move-result v3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getViewCountTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getItemTextColor()I

    move-result v3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getCountHintTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v1}, Lcom/biznessapps/youtube/YoutubeRssEntity;->getItemTextColor()I

    move-result v3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;->getRatingAverageTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 79
    .end local v2    # "leftDrawableIndex":I
    :cond_1
    return-object p2

    .line 47
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;
    .end local v1    # "item":Lcom/biznessapps/youtube/YoutubeRssEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$YoutubeRssItem;
    goto/16 :goto_0
.end method

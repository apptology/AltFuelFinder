.class public Lcom/biznessapps/rss/RssAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "RssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/rss/RssEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private imageMargin:I

.field private rssUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/rss/RssEntity;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/rss/RssEntity;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 43
    iput-object p1, p0, Lcom/biznessapps/rss/RssAdapter;->activity:Landroid/app/Activity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$dimen;->thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/rss/RssAdapter;->imageMargin:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/rss/RssAdapter;Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/rss/RssAdapter;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/rss/RssAdapter;->setExtendedMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/rss/RssAdapter;Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/rss/RssAdapter;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/rss/RssAdapter;->setUsualMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/rss/RssAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/rss/RssAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/rss/RssAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private defineSectionHeader(Lcom/biznessapps/common/entities/CommonListEntity;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/common/entities/CommonListEntity;
    .param p2, "sectionTitleView"    # Landroid/widget/TextView;

    .prologue
    const/16 v2, 0x8

    .line 165
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->getSection()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "section":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/biznessapps/rss/RssAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v3, p0, Lcom/biznessapps/rss/RssAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getTransparentSectionBarColor()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 169
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->isShowSection()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/CommonListEntity;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "changedSectionName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .end local v0    # "changedSectionName":Ljava/lang/String;
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setExtendedMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 2
    .param p1, "descriptionView"    # Landroid/widget/TextView;
    .param p2, "dateView"    # Landroid/widget/TextView;
    .param p3, "isImageExist"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p3, :cond_0

    .line 148
    iget v0, p0, Lcom/biznessapps/rss/RssAdapter;->imageMargin:I

    invoke-static {p1, v0, p4}, Lcom/biznessapps/utils/ViewUtils;->setSpannableExtendedText(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 150
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 151
    invoke-direct {p0, p1, v1, p3}, Lcom/biznessapps/rss/RssAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 152
    invoke-direct {p0, p2, v1, p3}, Lcom/biznessapps/rss/RssAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 153
    return-void
.end method

.method private setMargin(Landroid/view/View;IZ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "margin"    # I
    .param p3, "isImageExist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p3, :cond_0

    move v0, p2

    .line 142
    .local v0, "leftMargin":I
    :goto_0
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void

    .end local v0    # "leftMargin":I
    :cond_0
    move v0, v2

    .line 141
    goto :goto_0
.end method

.method private setUsualMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V
    .locals 1
    .param p1, "descriptionView"    # Landroid/widget/TextView;
    .param p2, "dateView"    # Landroid/widget/TextView;
    .param p3, "isImageExist"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 157
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget v0, p0, Lcom/biznessapps/rss/RssAdapter;->imageMargin:I

    invoke-direct {p0, p1, v0, p3}, Lcom/biznessapps/rss/RssAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 159
    iget v0, p0, Lcom/biznessapps/rss/RssAdapter;->imageMargin:I

    invoke-direct {p0, p2, v0, p3}, Lcom/biznessapps/rss/RssAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 160
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_3

    .line 51
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/biznessapps/rss/RssAdapter;->layoutItemResourceId:I

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v8, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;

    invoke-direct {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;-><init>()V

    .line 54
    .local v8, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;
    sget v1, Lcom/biznessapps/layout/R$id;->rss_title_label:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 55
    sget v1, Lcom/biznessapps/layout/R$id;->rss_summary_label:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->setTextViewSummary(Landroid/widget/TextView;)V

    .line 56
    sget v1, Lcom/biznessapps/layout/R$id;->rss_date_label:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->setTextViewDate(Landroid/widget/TextView;)V

    .line 57
    sget v1, Lcom/biznessapps/layout/R$id;->row_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->setImageView(Landroid/widget/ImageView;)V

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/rss/RssAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/rss/RssEntity;

    .line 64
    .local v4, "item":Lcom/biznessapps/rss/RssEntity;
    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewSummary()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    sget v1, Lcom/biznessapps/layout/R$id;->section_title_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 71
    .local v9, "sectionTitleView":Landroid/widget/TextView;
    invoke-direct {p0, v4, v9}, Lcom/biznessapps/rss/RssAdapter;->defineSectionHeader(Lcom/biznessapps/common/entities/CommonListEntity;Landroid/widget/TextView;)V

    .line 72
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?width=100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 76
    iput-object v12, p0, Lcom/biznessapps/rss/RssAdapter;->rssUrl:Ljava/lang/String;

    .line 84
    :cond_1
    :goto_1
    invoke-static {v12}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    .line 85
    .local v7, "isImageExist":Z
    if-eqz v7, :cond_6

    .line 86
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedImage(Ljava/lang/String;Landroid/view/View;)V

    .line 87
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_2
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/rss/RssAdapter;->imageMargin:I

    invoke-direct {p0, v1, v2, v7}, Lcom/biznessapps/rss/RssAdapter;->setMargin(Landroid/view/View;IZ)V

    .line 92
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewSummary()Landroid/widget/TextView;

    move-result-object v5

    .line 93
    .local v5, "summaryView":Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v6

    .line 94
    .local v6, "dateView":Landroid/widget/TextView;
    sget v1, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 95
    .local v3, "arrowNavigationView":Landroid/widget/ImageView;
    new-instance v1, Lcom/biznessapps/rss/RssAdapter$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/biznessapps/rss/RssAdapter$1;-><init>(Lcom/biznessapps/rss/RssAdapter;Landroid/widget/ImageView;Lcom/biznessapps/rss/RssEntity;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v6, v7, v1}, Lcom/biznessapps/rss/RssAdapter;->setExtendedMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 115
    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 120
    :goto_3
    sget v1, Lcom/biznessapps/layout/R$id;->share_news_button:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 121
    .local v11, "shareButton":Landroid/widget/ImageView;
    new-instance v1, Lcom/biznessapps/rss/RssAdapter$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/rss/RssAdapter$2;-><init>(Lcom/biznessapps/rss/RssAdapter;)V

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getItemTextColor()I

    move-result v1

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getItemTextColor()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->hasColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getItemColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/biznessapps/rss/RssAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getItemTextColor()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewSummary()Landroid/widget/TextView;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x2

    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v14

    aput-object v14, v2, v13

    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/rss/RssAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 136
    .end local v3    # "arrowNavigationView":Landroid/widget/ImageView;
    .end local v5    # "summaryView":Landroid/widget/TextView;
    .end local v6    # "dateView":Landroid/widget/TextView;
    .end local v7    # "isImageExist":Z
    .end local v9    # "sectionTitleView":Landroid/widget/TextView;
    .end local v11    # "shareButton":Landroid/widget/ImageView;
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    return-object p2

    .line 60
    .end local v4    # "item":Lcom/biznessapps/rss/RssEntity;
    .end local v8    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;

    .restart local v8    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;
    goto/16 :goto_0

    .line 77
    .restart local v4    # "item":Lcom/biznessapps/rss/RssEntity;
    .restart local v9    # "sectionTitleView":Landroid/widget/TextView;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/biznessapps/rss/RssAdapter;->rssUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    iget-object v12, p0, Lcom/biznessapps/rss/RssAdapter;->rssUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 80
    :cond_5
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v10

    .line 81
    .local v10, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getRssIconUrl()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 89
    .end local v10    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    .restart local v7    # "isImageExist":Z
    :cond_6
    invoke-virtual {v8}, Lcom/biznessapps/common/adapters/ListItemHolder$RssItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 117
    .restart local v3    # "arrowNavigationView":Landroid/widget/ImageView;
    .restart local v5    # "summaryView":Landroid/widget/TextView;
    .restart local v6    # "dateView":Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v4}, Lcom/biznessapps/rss/RssEntity;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v6, v7, v1}, Lcom/biznessapps/rss/RssAdapter;->setUsualMode(Landroid/widget/TextView;Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 118
    sget v1, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.class public Lcom/biznessapps/around_us/AroundUsDetailActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "AroundUsDetailActivity.java"


# instance fields
.field private addressTextView:Landroid/widget/TextView;

.field private callUsButton:Landroid/widget/TextView;

.field private descriptionWebView:Lcom/biznessapps/widgets/SmartWebView;

.field private directionButton:Landroid/widget/TextView;

.field private distanceTextView:Landroid/widget/TextView;

.field private emailUsButton:Landroid/widget/TextView;

.field private iconView:Landroid/widget/ImageView;

.field private item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

.field private nameTextView:Landroid/widget/TextView;

.field private root:Landroid/view/ViewGroup;

.field private shareButton:Landroid/widget/ImageView;

.field private viewWebsiteButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/around_us/AroundUsDetailActivity;)Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/around_us/AroundUsDetailActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    return-object v0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->callUsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/around_us/AroundUsDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity$1;-><init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->viewWebsiteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/around_us/AroundUsDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity$2;-><init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->directionButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity$3;-><init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->emailUsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/around_us/AroundUsDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity$4;-><init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/around_us/AroundUsDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity$5;-><init>(Lcom/biznessapps/around_us/AroundUsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method private initViews()V
    .locals 15

    .prologue
    .line 119
    sget v1, Lcom/biznessapps/layout/R$id;->around_us_detail_root:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->root:Landroid/view/ViewGroup;

    .line 120
    sget v1, Lcom/biznessapps/layout/R$id;->contact_buttons_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 121
    .local v7, "buttonsContainer":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->call_us_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->callUsButton:Landroid/widget/TextView;

    .line 122
    sget v1, Lcom/biznessapps/layout/R$id;->direction_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->directionButton:Landroid/widget/TextView;

    .line 123
    sget v1, Lcom/biznessapps/layout/R$id;->view_website_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->viewWebsiteButton:Landroid/widget/TextView;

    .line 124
    sget v1, Lcom/biznessapps/layout/R$id;->email_us_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->emailUsButton:Landroid/widget/TextView;

    .line 126
    sget v1, Lcom/biznessapps/layout/R$id;->title_label:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->nameTextView:Landroid/widget/TextView;

    .line 127
    sget v1, Lcom/biznessapps/layout/R$id;->title_address_label:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->addressTextView:Landroid/widget/TextView;

    .line 128
    sget v1, Lcom/biznessapps/layout/R$id;->around_us_distance:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->distanceTextView:Landroid/widget/TextView;

    .line 129
    sget v1, Lcom/biznessapps/layout/R$id;->description_text:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/SmartWebView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->descriptionWebView:Lcom/biznessapps/widgets/SmartWebView;

    .line 131
    sget v1, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->shareButton:Landroid/widget/ImageView;

    .line 133
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->callUsButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->call_us:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->directionButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->directions:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->emailUsButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->viewWebsiteButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->view_website:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->callUsButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 139
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->directionButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 140
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->viewWebsiteButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 141
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->emailUsButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 143
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->root:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 144
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    const/16 v2, 0xb4

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->addAlpha(II)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 146
    const/4 v13, 0x0

    .line 147
    .local v13, "leftDrawableIndex":I
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v12

    .line 148
    .local v12, "itemColor":I
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v13

    invoke-static {v12, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->iconView:Landroid/widget/ImageView;

    .line 152
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->image_view_border:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 153
    .local v11, "iconBorderView":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 157
    sget v1, Lcom/biznessapps/layout/R$id;->description_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 158
    .local v10, "descriptionContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v10, v1}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 159
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v9

    .line 160
    .local v9, "dataContainerColor":I
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v10, v9, v1}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 162
    sget v1, Lcom/biznessapps/layout/R$id;->comments_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 163
    .local v8, "commentsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v8, v9, v1}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 165
    sget v1, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 167
    sget v1, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    sget v1, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments()Z

    move-result v14

    .line 171
    .local v14, "shouldHideComments":Z
    if-eqz v14, :cond_0

    .line 172
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    sget v1, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 175
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v1}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->tabId:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;I)V

    .line 178
    .local v0, "socialCommentComponent":Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->setEnableListViewScroll(Z)V

    .line 179
    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V

    goto :goto_0
.end method

.method private loadBgUrl()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "BG_URL_EXTRA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 114
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1, v0, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 116
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    return-void
.end method

.method private loadContent()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    const/4 v10, 0x0

    .line 256
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->loadBgUrl()V

    .line 257
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p0, v8}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->addPins(Ljava/util/List;)V

    .line 275
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->distanceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-static {v0, v3, v4}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 276
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    .end local v8    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;>;"
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :goto_1
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->addressTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v3}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_2
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->descriptionWebView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 294
    const-string v6, "background-color:"

    .line 295
    .local v6, "descriptionBg":Ljava/lang/String;
    const-string v9, ""

    .line 296
    .local v9, "transparentBg":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->descriptionWebView:Lcom/biznessapps/widgets/SmartWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/SmartWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->descriptionWebView:Lcom/biznessapps/widgets/SmartWebView;

    const/4 v1, 0x1

    invoke-static {v1, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/SmartWebView;->setBackgroundColor(I)V

    .line 301
    .end local v2    # "description":Ljava/lang/String;
    .end local v6    # "descriptionBg":Ljava/lang/String;
    .end local v9    # "transparentBg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v7

    .line 302
    .local v7, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0, v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 305
    :cond_1
    return-void

    .line 278
    .end local v7    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->setMapVisibility(Z)V

    goto/16 :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 105
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LOCATION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/biznessapps/layout/R$layout;->around_us_detail_layout:I

    return v0
.end method

.method protected getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 8
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "customizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->isCurrentLocoation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$drawable;->my_location_bubble:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$dimen;->map_pin_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 238
    .local v3, "flagWidth":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 239
    .local v2, "flagHeight":F
    float-to-int v5, v3

    float-to-int v6, v2

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "flagHeight":F
    .end local v3    # "flagWidth":F
    :goto_0
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 247
    .local v4, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v4

    .line 241
    .end local v4    # "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_0
    sget v5, Lcom/biznessapps/layout/R$drawable;->contact_map_pin:I

    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getColor()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/biznessapps/location/MapUtils;->customizeMarkerBitmap(ILandroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->initAdsWithAlpha()V

    .line 91
    return-void
.end method

.method protected initSettingsData()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->initSettingsData()V

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AROUND_US_ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->item:Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 86
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsDetailActivity;->descriptionWebView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    .line 229
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onBackPressed()V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->initViews()V

    .line 67
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->initListeners()V

    .line 68
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->loadContent()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/biznessapps/around_us/AroundUsDetailActivity;->loadBgUrl()V

    .line 80
    return-void
.end method

.method protected useMapInfoWindow()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

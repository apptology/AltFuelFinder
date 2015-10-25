.class public Lcom/biznessapps/events/EventV2DetailsActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "EventV2DetailsActivity.java"


# instance fields
.field private addCalendarButton:Landroid/widget/ImageView;

.field private commentsButton:Landroid/widget/Button;

.field private commentsTabContainer:Landroid/view/ViewGroup;

.field private commentsView:Landroid/widget/TextView;

.field private eventDescriptionLabelView:Landroid/widget/TextView;

.field private eventDetailId:Ljava/lang/String;

.field private eventDirectionView:Landroid/widget/TextView;

.field private eventTextView:Landroid/widget/TextView;

.field private eventTimeView:Landroid/widget/TextView;

.field private goingButton:Landroid/widget/Button;

.field private goingTabContainer:Landroid/view/ViewGroup;

.field private goingView:Landroid/widget/TextView;

.field private handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private headerImageView:Landroid/widget/ImageView;

.field private imageUri:Landroid/net/Uri;

.field private infoButton:Landroid/widget/Button;

.field private infoTabContainer:Landroid/view/ViewGroup;

.field private isUpcomingEvent:Z

.field private item:Lcom/biznessapps/events/EventEntity;

.field private parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private photosButton:Landroid/widget/Button;

.field private photosTabContainer:Landroid/view/ViewGroup;

.field private photosView:Landroid/widget/TextView;

.field private progressPhotoContainer:Landroid/view/ViewGroup;

.field private root:Landroid/view/ViewGroup;

.field private shareButton:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private webView:Lcom/biznessapps/widgets/SmartWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/events/EventV2DetailsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->isUpcomingEvent:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/events/EventV2DetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->loadContent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/events/EventEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/biznessapps/events/EventV2DetailsActivity;Lcom/biznessapps/events/EventEntity;)Lcom/biznessapps/events/EventEntity;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;
    .param p1, "x1"    # Lcom/biznessapps/events/EventEntity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/CachingManager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/events/EventV2DetailsActivity;->updateControlsWithData(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/events/EventV2DetailsActivity;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->progressPhotoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/biznessapps/events/EventV2DetailsActivity;)Lcom/biznessapps/api/CachingManager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/biznessapps/events/EventV2DetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/events/EventV2DetailsActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventV2DetailsActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method private activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonToActivate"    # Landroid/widget/Button;
    .param p2, "tabToActivate"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 432
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 433
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 434
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 439
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 445
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 446
    return-void
.end method

.method private defineViewsAccessOnLoading()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->progressPhotoContainer:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->getProgressBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 487
    return-void
.end method

.method private initViews()V
    .locals 20

    .prologue
    .line 141
    sget v3, Lcom/biznessapps/layout/R$id;->root_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->root:Landroid/view/ViewGroup;

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->root:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 145
    sget v3, Lcom/biznessapps/layout/R$id;->event_info_tab_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoTabContainer:Landroid/view/ViewGroup;

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoTabContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 147
    sget v3, Lcom/biznessapps/layout/R$id;->comments_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsTabContainer:Landroid/view/ViewGroup;

    .line 148
    sget v3, Lcom/biznessapps/layout/R$id;->event_going_tab_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;

    .line 149
    sget v3, Lcom/biznessapps/layout/R$id;->event_photo_tab_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosTabContainer:Landroid/view/ViewGroup;

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosTabContainer:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->progressPhotoContainer:Landroid/view/ViewGroup;

    .line 151
    sget v3, Lcom/biznessapps/layout/R$id;->webview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/SmartWebView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->webView:Lcom/biznessapps/widgets/SmartWebView;

    .line 152
    sget v3, Lcom/biznessapps/layout/R$id;->event_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTextView:Landroid/widget/TextView;

    .line 153
    sget v3, Lcom/biznessapps/layout/R$id;->time_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTimeView:Landroid/widget/TextView;

    .line 154
    sget v3, Lcom/biznessapps/layout/R$id;->direction_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDirectionView:Landroid/widget/TextView;

    .line 155
    sget v3, Lcom/biznessapps/layout/R$id;->description_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDescriptionLabelView:Landroid/widget/TextView;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTimeView:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->checkin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDirectionView:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->directions:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDescriptionLabelView:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->description:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTimeView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDirectionView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDescriptionLabelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    sget v3, Lcom/biznessapps/layout/R$id;->separate_line:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 166
    .local v16, "separateLine":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 167
    const/4 v14, 0x0

    .line 168
    .local v14, "drawableLeftIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTimeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v14

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDirectionView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v14

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 173
    sget v3, Lcom/biznessapps/layout/R$id;->event_new_buttons_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 174
    .local v19, "topButtonsContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 175
    sget v3, Lcom/biznessapps/layout/R$id;->bottom_buttons_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 176
    .local v12, "bottomButtonsContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v3

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 177
    sget v3, Lcom/biznessapps/layout/R$id;->event_new_info_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    .line 178
    sget v3, Lcom/biznessapps/layout/R$id;->event_new_comments_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    .line 179
    sget v3, Lcom/biznessapps/layout/R$id;->event_new_going_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;

    .line 180
    sget v3, Lcom/biznessapps/layout/R$id;->event_new_photos_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosButton:Landroid/widget/Button;

    .line 181
    sget v3, Lcom/biznessapps/layout/R$id;->info_header_image:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->headerImageView:Landroid/widget/ImageView;

    .line 183
    sget v3, Lcom/biznessapps/layout/R$id;->photos_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosView:Landroid/widget/TextView;

    .line 184
    sget v3, Lcom/biznessapps/layout/R$id;->comments_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsView:Landroid/widget/TextView;

    .line 185
    sget v3, Lcom/biznessapps/layout/R$id;->going_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingView:Landroid/widget/TextView;

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->about:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->attend:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->gallery_title:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$1;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$2;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$3;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosButton:Landroid/widget/Button;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$4;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v3, Lcom/biznessapps/layout/R$id;->add_photo_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 220
    .local v10, "addPhotoButton":Landroid/widget/Button;
    new-instance v3, Lcom/biznessapps/events/EventV2DetailsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$5;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v3, Lcom/biznessapps/layout/R$id;->add_event_to_calendar:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->addCalendarButton:Landroid/widget/ImageView;

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->addCalendarButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->addCalendarButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$6;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget v3, Lcom/biznessapps/layout/R$id;->share_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->shareButton:Landroid/widget/ImageView;

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$7;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoTabContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/biznessapps/events/EventV2DetailsActivity;->activateButton(Landroid/widget/Button;Landroid/view/ViewGroup;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v11

    .line 259
    .local v11, "barTextColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->infoButton:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingButton:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosButton:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 263
    sget v3, Lcom/biznessapps/layout/R$id;->title_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->titleView:Landroid/widget/TextView;

    .line 264
    const/high16 v3, -0x1000000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 267
    sget v3, Lcom/biznessapps/layout/R$id;->event_going_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 268
    .local v15, "iAmGoingButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v15}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v10}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 273
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->isUpcomingEvent:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/biznessapps/layout/R$string;->i_am_going:I

    :goto_0
    invoke-virtual {v15, v3}, Landroid/widget/Button;->setText(I)V

    .line 275
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v13

    .line 277
    .local v13, "cacher":Lcom/biznessapps/api/CachingManager;
    new-instance v18, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->root:Landroid/view/ViewGroup;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v13}, Lcom/biznessapps/events/EventV2DetailsActivity$8;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;Landroid/content/Context;Lcom/biznessapps/api/CachingManager;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V

    .line 287
    .local v18, "socialPopupView":Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    new-instance v3, Lcom/biznessapps/events/EventV2DetailsActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/biznessapps/events/EventV2DetailsActivity$9;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments()Z

    move-result v17

    .line 296
    .local v17, "shouldHideComments":Z
    if-eqz v17, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 311
    return-void

    .line 273
    .end local v13    # "cacher":Lcom/biznessapps/api/CachingManager;
    .end local v17    # "shouldHideComments":Z
    .end local v18    # "socialPopupView":Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$string;->i_went:I

    goto :goto_0

    .line 300
    .restart local v13    # "cacher":Lcom/biznessapps/api/CachingManager;
    .restart local v17    # "shouldHideComments":Z
    .restart local v18    # "socialPopupView":Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    :cond_1
    new-instance v2, Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsTabContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLcom/biznessapps/api/UiSettings;I)V

    .line 302
    .local v2, "socialCommentComponent":Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    new-instance v3, Lcom/biznessapps/events/EventV2DetailsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/biznessapps/events/EventV2DetailsActivity$10;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->setCommentActionListener(Lcom/biznessapps/common/social/ui/SocialCommentComponent$CommentActionListener;)V

    .line 308
    invoke-virtual {v2}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V

    goto :goto_1
.end method

.method private loadContent()V
    .locals 11

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->preDataLoading()V

    .line 315
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v0}, Lcom/biznessapps/events/EventEntity;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v8, "1"

    .line 316
    .local v8, "recurringPart":Ljava/lang/String;
    :goto_0
    const-string v0, "event_v2ex_detail.php?app_code=%s&id=%s&recurring=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "requestUrl":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v10, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v7, Lcom/biznessapps/api/LoadDataTaskExternal;

    invoke-direct {v7, p0, v10}, Lcom/biznessapps/api/LoadDataTaskExternal;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 321
    .local v7, "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    invoke-virtual {v7, v9}, Lcom/biznessapps/api/LoadDataTaskExternal;->setRequestUrl(Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-direct {v0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    invoke-virtual {v7, v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 323
    new-instance v0, Lcom/biznessapps/events/EventV2DetailsActivity$11;

    invoke-direct {v0, p0}, Lcom/biznessapps/events/EventV2DetailsActivity$11;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    iput-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 324
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v7, v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 325
    new-instance v0, Lcom/biznessapps/events/EventV2DetailsActivity$12;

    invoke-direct {v0, p0}, Lcom/biznessapps/events/EventV2DetailsActivity$12;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    iput-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 332
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v7, v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 333
    new-instance v0, Lcom/biznessapps/events/EventV2DetailsActivity$13;

    invoke-direct {v0, p0}, Lcom/biznessapps/events/EventV2DetailsActivity$13;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    iput-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 345
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v7, v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 346
    invoke-virtual {v7}, Lcom/biznessapps/api/LoadDataTaskExternal;->launch()V

    .line 347
    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosTabContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v5, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosView:Landroid/widget/TextView;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/biznessapps/events/EventPhotosTabUtils;->loadPhotosData(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Landroid/widget/TextView;)V

    .line 348
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingTabContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->tabId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    iget-boolean v5, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->isUpcomingEvent:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/events/EventGoingTabUtils;->loadGoingData(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V

    .line 349
    return-void

    .line 315
    .end local v7    # "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    .end local v8    # "recurringPart":Ljava/lang/String;
    .end local v9    # "requestUrl":Ljava/lang/String;
    .end local v10    # "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    :cond_0
    const-string v8, "0"

    goto :goto_0
.end method

.method private loadWebContent()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v0}, Lcom/biznessapps/events/EventEntity;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 491
    .local v6, "htmlDescription":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 493
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/SmartWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method private preDataLoading()V
    .locals 7

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/events/EventEntity;

    .line 421
    .local v1, "item":Lcom/biznessapps/events/EventEntity;
    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getDatetimeEnd()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 422
    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "startDateValue":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/biznessapps/events/EventEntity;->getDatetimeEnd()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "endDateValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTimeView:Landroid/widget/TextView;

    const-string v4, "%s - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    .end local v0    # "endDateValue":Ljava/lang/String;
    .end local v2    # "startDateValue":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/location/LocationUtils;->getEventDetailAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    return-void
.end method

.method private sendPhoto([B)V
    .locals 1
    .param p1, "imageToSend"    # [B

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->defineViewsAccessOnLoading()V

    .line 450
    new-instance v0, Lcom/biznessapps/events/EventV2DetailsActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/events/EventV2DetailsActivity$15;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;[B)V

    invoke-static {p0, v0}, Lcom/biznessapps/events/UploadPhotoUtils;->showCaptionDialog(Landroid/app/Activity;Lcom/biznessapps/events/UploadPhotoUtils$UploadPhotoTextListener;)V

    .line 483
    return-void
.end method

.method private updateControlsWithData(Landroid/app/Activity;)V
    .locals 10
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 391
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v4}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "BG_URL_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->bgUrl:Ljava/lang/String;

    .line 393
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v4, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->bgUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->root:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3, v4, v5, v6}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 395
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 396
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->headerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 397
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v3}, Lcom/biznessapps/events/EventEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 399
    invoke-virtual {v0, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 400
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v3, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 402
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDirectionView:Landroid/widget/TextView;

    new-instance v4, Lcom/biznessapps/events/EventV2DetailsActivity$14;

    invoke-direct {v4, p0}, Lcom/biznessapps/events/EventV2DetailsActivity$14;-><init>(Lcom/biznessapps/events/EventV2DetailsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const-string v2, "%d %s"

    .line 410
    .local v2, "textFormat":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->isUpcomingEvent:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/biznessapps/layout/R$string;->people_going:I

    :goto_0
    invoke-virtual {p0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "peopleGoingFormat":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->photosView:Landroid/widget/TextView;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v5}, Lcom/biznessapps/events/EventEntity;->getPhotoCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    sget v5, Lcom/biznessapps/layout/R$string;->photos:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/events/EventV2DetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->commentsView:Landroid/widget/TextView;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v5}, Lcom/biznessapps/events/EventEntity;->getCommentsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    sget v5, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/events/EventV2DetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->goingView:Landroid/widget/TextView;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v6}, Lcom/biznessapps/events/EventEntity;->getGoingCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v3, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {p0, v3}, Lcom/biznessapps/events/EventV2DetailsActivity;->addPins(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 416
    invoke-direct {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->loadWebContent()V

    .line 417
    return-void

    .line 410
    .end local v1    # "peopleGoingFormat":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$string;->people_went:I

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/biznessapps/layout/R$layout;->event_detail_v2_layout:I

    return v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->initAdsWithAlpha()V

    .line 354
    return-void
.end method

.method protected initGoogleMap()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->initGoogleMap()V

    .line 124
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 125
    return-void
.end method

.method protected initSettingsData()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->initSettingsData()V

    .line 130
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/events/EventEntity;

    iput-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    .line 131
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->item:Lcom/biznessapps/events/EventEntity;

    invoke-virtual {v0}, Lcom/biznessapps/events/EventEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->eventDetailId:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UPCOMING_EVENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->isUpcomingEvent:Z

    .line 133
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "imageToSend":[B
    packed-switch p1, :pswitch_data_0

    .line 376
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 379
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 380
    invoke-direct {p0, v0}, Lcom/biznessapps/events/EventV2DetailsActivity;->sendPhoto([B)V

    .line 382
    :cond_2
    return-void

    .line 362
    :pswitch_0
    invoke-virtual {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->imageUri:Landroid/net/Uri;

    invoke-static {v5, v6, p3}, Lcom/biznessapps/utils/CommonUtils;->getScaledPhoto(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 363
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/biznessapps/utils/CommonUtils;->convertImageToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 364
    goto :goto_0

    .line 366
    .end local v2    # "resultBitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    if-eqz p3, :cond_0

    .line 367
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 368
    .local v4, "selectedImageUri":Landroid/net/Uri;
    invoke-static {v4, p0}, Lcom/biznessapps/utils/CommonUtils;->getPath(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "selectedImagePath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "picture":Ljava/io/File;
    invoke-static {v1}, Lcom/biznessapps/utils/CommonUtils;->convertFileToBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 372
    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/biznessapps/events/EventV2DetailsActivity;->webView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->canGoBack(Landroid/webkit/WebView;)Z

    .line 387
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onBackPressed()V

    .line 388
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->initViews()V

    .line 118
    invoke-direct {p0}, Lcom/biznessapps/events/EventV2DetailsActivity;->loadContent()V

    .line 119
    return-void
.end method

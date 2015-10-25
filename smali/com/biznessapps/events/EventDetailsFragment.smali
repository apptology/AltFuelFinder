.class public Lcom/biznessapps/events/EventDetailsFragment;
.super Lcom/biznessapps/info_items/InfoDetailFragment;
.source "EventDetailsFragment.java"


# instance fields
.field private addCalendarButton:Landroid/widget/ImageView;

.field private eventDetailId:Ljava/lang/String;

.field private isRecurring:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;-><init>()V

    return-void
.end method

.method public static addEvent(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "event"    # Lcom/biznessapps/events/EventEntity;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "beginTime"

    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getDatetimeBegin()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getDatetimeEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getDatetimeEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->isRecurring()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "rrule"

    const-string v2, "FREQ=WEEKLY;WKST=MO;BYDAY=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/biznessapps/events/EventEntity;->getRecurringDay()Lcom/biznessapps/events/EventEntity$RecurringDay;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected canHaveNewDesign()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/events/EventDetailsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventDetailsFragment;->eventDetailId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    iput-object v0, p0, Lcom/biznessapps/events/EventDetailsFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 88
    iget-object v0, p0, Lcom/biznessapps/events/EventDetailsFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/biznessapps/info_items/InfoDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 63
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    iget-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->eventDetailId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setCatId(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/biznessapps/layout/R$layout;->event_detail_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->isRecurring:Z

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 76
    .local v0, "recurringPart":Ljava/lang/String;
    :goto_0
    const-string v1, "event_detail.php?app_code=%s&id=%s&recurring=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/events/EventDetailsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/events/EventDetailsFragment;->eventDetailId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "recurringPart":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected initCalendarButton()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/biznessapps/events/EventDetailsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/events/EventEntity;

    .line 36
    .local v0, "item":Lcom/biznessapps/events/EventEntity;
    iget-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->add_event_to_calendar:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->addCalendarButton:Landroid/widget/ImageView;

    .line 37
    iget-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/events/EventDetailsFragment;->addCalendarButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->addCalendarButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/biznessapps/events/EventDetailsFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/events/EventDetailsFragment$1;-><init>(Lcom/biznessapps/events/EventDetailsFragment;Lcom/biznessapps/events/EventEntity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/info_items/InfoDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/biznessapps/events/EventDetailsFragment;->initCalendarButton()V

    .line 31
    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/biznessapps/info_items/InfoDetailFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/events/EventDetailsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/events/EventEntity;

    .line 51
    .local v0, "item":Lcom/biznessapps/events/EventEntity;
    invoke-virtual {v0}, Lcom/biznessapps/events/EventEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->eventDetailId:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/biznessapps/events/EventEntity;->isRecurring()Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/events/EventDetailsFragment;->isRecurring:Z

    .line 53
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseInfo(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/events/EventDetailsFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 82
    invoke-virtual {p0}, Lcom/biznessapps/events/EventDetailsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventDetailsFragment;->eventDetailId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventDetailsFragment;->infoItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

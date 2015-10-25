.class public Lcom/biznessapps/events/EventsV2ListFragment;
.super Lcom/biznessapps/events/EventsListFragment;
.source "EventsV2ListFragment.java"


# static fields
.field private static final PAST_EVENTS_TYPE:I = 0x2

.field private static final UPCOMING_EVENTS_TYPE:I = 0x1


# instance fields
.field private pastEventsButton:Landroid/widget/Button;

.field private searchType:I

.field private upcomingEventsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/events/EventsListFragment;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/events/EventsV2ListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;

    .prologue
    .line 28
    iget v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/events/EventsV2ListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/events/EventsV2ListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/biznessapps/events/EventsV2ListFragment;->updateButtonState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/events/EventsV2ListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/events/EventsV2ListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$402(Lcom/biznessapps/events/EventsV2ListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/biznessapps/events/EventsV2ListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/events/EventsV2ListFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->loadData()V

    return-void
.end method

.method private canAddItem(Ljava/lang/String;Lcom/biznessapps/events/EventEntity;)Z
    .locals 4
    .param p1, "searchQuery"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/biznessapps/events/EventEntity;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "canAdd":Z
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p2}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 174
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateButtonState(I)V
    .locals 2
    .param p1, "searchType"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_V2_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->items:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/events/EventEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "comingItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    const/4 v6, 0x1

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v3, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/events/EventEntity;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 138
    iget v7, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I

    if-ne v7, v6, :cond_1

    .line 139
    .local v6, "showUpcoming":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/events/EventEntity;

    .line 141
    .local v5, "item":Lcom/biznessapps/events/EventEntity;
    invoke-virtual {v5}, Lcom/biznessapps/events/EventEntity;->getDatetimeEnd()Ljava/util/Date;

    move-result-object v0

    .line 142
    .local v0, "endDate":Ljava/util/Date;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 143
    .local v1, "endTime":J
    :goto_2
    if-eqz v6, :cond_3

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_0

    .line 145
    iget-object v7, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v7, v5}, Lcom/biznessapps/events/EventsV2ListFragment;->canAddItem(Ljava/lang/String;Lcom/biznessapps/events/EventEntity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    .end local v0    # "endDate":Ljava/util/Date;
    .end local v1    # "endTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/biznessapps/events/EventEntity;
    .end local v6    # "showUpcoming":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 142
    .restart local v0    # "endDate":Ljava/util/Date;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "item":Lcom/biznessapps/events/EventEntity;
    .restart local v6    # "showUpcoming":Z
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_2

    .line 150
    .restart local v1    # "endTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-lez v7, :cond_0

    .line 151
    iget-object v7, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v7, v5}, Lcom/biznessapps/events/EventsV2ListFragment;->canAddItem(Ljava/lang/String;Lcom/biznessapps/events/EventEntity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v0    # "endDate":Ljava/util/Date;
    .end local v1    # "endTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/biznessapps/events/EventEntity;
    .end local v6    # "showUpcoming":Z
    :cond_4
    return-object v3
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/biznessapps/layout/R$layout;->search_events_list_layout:I

    return v0
.end method

.method protected getListItemLayoutId()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/biznessapps/layout/R$layout;->list_event_v2_item:I

    return v0
.end method

.method protected getNameOfEventDetailFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "EVENTS_V2_DETAIL_FRAGMENT"

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    const-string v0, "events_v2ex.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/events/EventsV2ListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initSearchBar()V
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lcom/biznessapps/events/EventsV2ListFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/events/EventsV2ListFragment$3;-><init>(Lcom/biznessapps/events/EventsV2ListFragment;)V

    .line 81
    .local v0, "dataLoadRunnable":Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;
    new-instance v1, Lcom/biznessapps/common/components/SearchTopBar;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/events/EventsV2ListFragment;->root:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/biznessapps/common/components/SearchTopBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/biznessapps/common/components/SearchTopBar$SearchDataRunnable;Lcom/biznessapps/api/UiSettings;)V

    .line 82
    .local v1, "searchBar":Lcom/biznessapps/common/components/SearchTopBar;
    invoke-virtual {v1}, Lcom/biznessapps/common/components/SearchTopBar;->getScreenListener()Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->screenListener:Lcom/biznessapps/common/fragments/CommonListFragment$ScreenListener;

    .line 83
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/biznessapps/events/EventsListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 43
    sget v1, Lcom/biznessapps/layout/R$id;->upcoming_events_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    .line 44
    sget v1, Lcom/biznessapps/layout/R$id;->past_events_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    .line 46
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->upcoming_events:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 47
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->past_events:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 48
    sget v1, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 50
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 51
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 53
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->upcomingEventsButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/events/EventsV2ListFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/events/EventsV2ListFragment$1;-><init>(Lcom/biznessapps/events/EventsV2ListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->pastEventsButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/events/EventsV2ListFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/events/EventsV2ListFragment$2;-><init>(Lcom/biznessapps/events/EventsV2ListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I

    invoke-direct {p0, v1}, Lcom/biznessapps/events/EventsV2ListFragment;->updateButtonState(I)V

    .line 70
    return-void
.end method

.method protected openEventItem(Landroid/app/Activity;Lcom/biznessapps/events/EventEntity;)V
    .locals 7
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/events/EventEntity;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/biznessapps/events/EventEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->getNameOfEventDetailFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EVENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    const-string v4, "TAB_UNIQUE_ID"

    move-object v1, p1

    check-cast v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_SPECIAL_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "TAB_FRAGMENT"

    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->getNameOfEventDetailFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "TAB_LABEL"

    invoke-virtual {p2}, Lcom/biznessapps/events/EventEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v4, "UPCOMING_EVENT"

    iget v1, p0, Lcom/biznessapps/events/EventsV2ListFragment;->searchType:I

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const-string v1, "CHILDREN_TAB_LABEL_PRESENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->bgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v3

    .line 127
    goto :goto_0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseEventsV2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/events/EventsV2ListFragment;->items:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Lcom/biznessapps/events/EventsV2ListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_V2_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/events/EventsV2ListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

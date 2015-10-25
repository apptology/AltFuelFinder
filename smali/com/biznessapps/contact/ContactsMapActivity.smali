.class public Lcom/biznessapps/contact/ContactsMapActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "ContactsMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;,
        Lcom/biznessapps/contact/ContactsMapActivity$ViewHolder;,
        Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;
    }
.end annotation


# static fields
.field private static final FIRST_INDEX:I


# instance fields
.field private addressTextView:Landroid/widget/TextView;

.field private callUsButton:Landroid/widget/TextView;

.field private directionButton:Landroid/widget/TextView;

.field private emailUsButton:Landroid/widget/TextView;

.field private handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private locationId:Ljava/lang/String;

.field private locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

.field private parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private rootContainer:Landroid/view/ViewGroup;

.field private shareButton:Landroid/widget/ImageView;

.field private tabId:Ljava/lang/String;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private viewWebsiteButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/contact/ContactsMapActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/contact/ContactsMapActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->canUseCaching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/biznessapps/contact/ContactsMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/contact/ContactsMapActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->handleInBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/contact/ContactsMapActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/contact/ContactsMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/contact/ContactsMapActivity;->tryParseData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/biznessapps/contact/ContactsMapActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/contact/ContactsMapActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/contact/ContactsMapActivity;->updateControlsWithData(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/contact/ContactsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/contact/ContactsMapActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    return-object v0
.end method

.method private canUseCaching()Z
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATIONS_MAP_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    iput-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    .line 395
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 380
    sget v5, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/RefreshableListView;

    .line 381
    .local v3, "listView":Lcom/biznessapps/widgets/RefreshableListView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;

    .line 383
    .local v2, "item":Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
    iget-object v5, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v2    # "item":Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;

    invoke-virtual {v5}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;->getItemColor()I

    move-result v5

    iget-object v6, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v5, v6}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 387
    new-instance v0, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, p0, v5, v4, v6}, Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 388
    .local v0, "adapter":Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;
    invoke-virtual {v3, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 391
    .end local v0    # "adapter":Lcom/biznessapps/contact/ContactsMapActivity$OpeningHoursAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listView":Lcom/biznessapps/widgets/RefreshableListView;
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    :cond_1
    return-void
.end method

.method private handleInBackground()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->callUsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/contact/ContactsMapActivity$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/contact/ContactsMapActivity$5;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->viewWebsiteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/contact/ContactsMapActivity$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/contact/ContactsMapActivity$6;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->directionButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/contact/ContactsMapActivity$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/contact/ContactsMapActivity$7;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->emailUsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/contact/ContactsMapActivity$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/contact/ContactsMapActivity$8;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/contact/ContactsMapActivity$9;

    invoke-direct {v1, p0}, Lcom/biznessapps/contact/ContactsMapActivity$9;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method

.method private initViews()V
    .locals 11

    .prologue
    .line 200
    sget v1, Lcom/biznessapps/layout/R$id;->contact_layout:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->rootContainer:Landroid/view/ViewGroup;

    .line 201
    sget v1, Lcom/biznessapps/layout/R$id;->call_us_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->callUsButton:Landroid/widget/TextView;

    .line 202
    sget v1, Lcom/biznessapps/layout/R$id;->direction_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->directionButton:Landroid/widget/TextView;

    .line 203
    sget v1, Lcom/biznessapps/layout/R$id;->view_website_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->viewWebsiteButton:Landroid/widget/TextView;

    .line 204
    sget v1, Lcom/biznessapps/layout/R$id;->email_us_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->emailUsButton:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->callUsButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 207
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->viewWebsiteButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 208
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->emailUsButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 209
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->directionButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 210
    sget v1, Lcom/biznessapps/layout/R$id;->title_address_label:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->addressTextView:Landroid/widget/TextView;

    .line 212
    sget v1, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->shareButton:Landroid/widget/ImageView;

    .line 214
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 216
    sget v1, Lcom/biznessapps/layout/R$id;->opening_hours_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 217
    .local v7, "activitiesContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v7, v1}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 218
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v9

    .line 219
    .local v9, "dataContainerColor":I
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v7, v9, v1}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 221
    sget v1, Lcom/biznessapps/layout/R$id;->comments_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 222
    .local v8, "commentsContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v8, v9, v1}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 223
    sget v1, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 225
    sget v1, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->opening_hours:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    sget v1, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->callUsButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->call_us:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->directionButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->directions:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->emailUsButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->viewWebsiteButton:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->view_website:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 235
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->shouldHideComments()Z

    move-result v10

    .line 236
    .local v10, "shouldHideComments":Z
    if-eqz v10, :cond_0

    .line 237
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialCommentComponent;

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity;->rootContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->tabId:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;I)V

    .line 241
    .local v0, "socialCommentComponent":Lcom/biznessapps/common/social/ui/SocialCommentComponent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->setEnableListViewScroll(Z)V

    .line 242
    invoke-virtual {v0}, Lcom/biznessapps/common/social/ui/SocialCommentComponent;->loadCommentsData()V

    goto :goto_0
.end method

.method private isDataNotEmpty(Lcom/biznessapps/location/entities/LocationEntity;)Z
    .locals 6
    .param p1, "item"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "result":Z
    if-eqz p1, :cond_0

    .line 292
    iget-object v5, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v5}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 294
    .local v1, "isLocationExist":Z
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-static {v5}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 295
    .local v0, "isAddressExist":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    .line 297
    .end local v0    # "isAddressExist":Z
    .end local v1    # "isLocationExist":Z
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v4

    .line 292
    goto :goto_0

    .restart local v0    # "isAddressExist":Z
    .restart local v1    # "isLocationExist":Z
    :cond_2
    move v2, v4

    .line 295
    goto :goto_1
.end method

.method private loadBgUrl()V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->bgUrl:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->bgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 184
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->bgUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity;->rootContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 186
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_1
    return-void
.end method

.method private loadContent()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "appCode":Ljava/lang/String;
    const-string v4, "location.php?app_code=%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "requestUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationId:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&location_id=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->tabId:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tab_id=%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/biznessapps/contact/ContactsMapActivity;->tabId:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v3, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Lcom/biznessapps/api/LoadDataTaskExternal;

    invoke-direct {v1, p0, v3}, Lcom/biznessapps/api/LoadDataTaskExternal;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 127
    .local v1, "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    invoke-virtual {v1, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;->setRequestUrl(Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/biznessapps/contact/ContactsMapActivity$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/contact/ContactsMapActivity$1;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    iput-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 134
    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v1, v4}, Lcom/biznessapps/api/LoadDataTaskExternal;->setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 135
    new-instance v4, Lcom/biznessapps/contact/ContactsMapActivity$2;

    invoke-direct {v4, p0}, Lcom/biznessapps/contact/ContactsMapActivity$2;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    iput-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 141
    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v1, v4}, Lcom/biznessapps/api/LoadDataTaskExternal;->setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 142
    new-instance v4, Lcom/biznessapps/contact/ContactsMapActivity$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/contact/ContactsMapActivity$3;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    iput-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 148
    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v1, v4}, Lcom/biznessapps/api/LoadDataTaskExternal;->setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 149
    new-instance v4, Lcom/biznessapps/contact/ContactsMapActivity$4;

    invoke-direct {v4, p0}, Lcom/biznessapps/contact/ContactsMapActivity$4;-><init>(Lcom/biznessapps/contact/ContactsMapActivity;)V

    iput-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 155
    iget-object v4, p0, Lcom/biznessapps/contact/ContactsMapActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v1, v4}, Lcom/biznessapps/api/LoadDataTaskExternal;->setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 156
    invoke-virtual {v1}, Lcom/biznessapps/api/LoadDataTaskExternal;->launch()V

    .line 157
    return-void
.end method

.method private preDataLoading()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->tabId:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LOCATION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private tryParseData(Ljava/lang/String;)Z
    .locals 7
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/NetworkResultEntity;->isOk()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 192
    .local v0, "isNotEmptyList":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    iput-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    .line 194
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCATIONS_MAP_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v2, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    return v2

    .end local v0    # "isNotEmptyList":Z
    :cond_1
    move v0, v4

    .line 191
    goto :goto_0

    .restart local v0    # "isNotEmptyList":Z
    :cond_2
    move v2, v4

    .line 196
    goto :goto_1
.end method

.method private updateControlsWithData(Landroid/app/Activity;)V
    .locals 14
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->loadBgUrl()V

    .line 302
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {p0, v11}, Lcom/biznessapps/contact/ContactsMapActivity;->isDataNotEmpty(Lcom/biznessapps/location/entities/LocationEntity;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v12}, Lcom/biznessapps/contact/ContactsMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 307
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {p0, v11}, Lcom/biznessapps/contact/ContactsMapActivity;->addPins(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 311
    :goto_1
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "addressInfo":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 313
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->addressTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->addressTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    :goto_2
    sget v11, Lcom/biznessapps/layout/R$id;->opening_hours_container:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 319
    .local v6, "openingTimeContainer":Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v6, v11}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getOpeningTimes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 323
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getOpeningTimes()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biznessapps/location/entities/LocationOpeningTime;

    .line 326
    .local v9, "time":Lcom/biznessapps/location/entities/LocationOpeningTime;
    invoke-virtual {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;->getOpenFrom()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;->getOpenFrom()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v10, "timeText":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;->getOpenTo()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 330
    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;->getOpenTo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 337
    .end local v10    # "timeText":Ljava/lang/StringBuilder;
    .local v8, "rightLabel":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v11

    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;->getDay()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "locDay":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 340
    invoke-virtual {v9}, Lcom/biznessapps/location/entities/LocationOpeningTime;->getDay()Ljava/lang/String;

    move-result-object v5

    .line 342
    :cond_3
    new-instance v4, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;

    invoke-direct {v4, v5, v8}, Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v4, "item":Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 309
    .end local v0    # "addressInfo":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;
    .end local v5    # "locDay":Ljava/lang/String;
    .end local v6    # "openingTimeContainer":Landroid/view/ViewGroup;
    .end local v8    # "rightLabel":Ljava/lang/String;
    .end local v9    # "time":Lcom/biznessapps/location/entities/LocationOpeningTime;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/biznessapps/contact/ContactsMapActivity;->setMapVisibility(Z)V

    goto/16 :goto_1

    .line 316
    .restart local v0    # "addressInfo":Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->addressTextView:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 334
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/contact/ContactsMapActivity$OpenHoursEntity;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "openingTimeContainer":Landroid/view/ViewGroup;
    .restart local v9    # "time":Lcom/biznessapps/location/entities/LocationOpeningTime;
    :cond_6
    const-string v8, ""

    .restart local v8    # "rightLabel":Ljava/lang/String;
    goto :goto_4

    .line 346
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "rightLabel":Ljava/lang/String;
    .end local v9    # "time":Lcom/biznessapps/location/entities/LocationOpeningTime;
    :cond_7
    invoke-direct {p0, v6, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 347
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 348
    sget v11, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->performClick()Z

    .line 351
    :cond_8
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v3

    .line 352
    .local v3, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getImage1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 353
    new-instance v7, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 354
    .local v7, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    sget v11, Lcom/biznessapps/layout/R$id;->image_left_box:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 355
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 356
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getImage1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 357
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 358
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 359
    invoke-virtual {v3, v7}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 361
    .end local v7    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_9
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getImage2()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 362
    new-instance v7, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 363
    .restart local v7    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    sget v11, Lcom/biznessapps/layout/R$id;->image_right_box:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 364
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 365
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->locationInfo:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v11}, Lcom/biznessapps/location/entities/LocationEntity;->getImage2()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 366
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 367
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 368
    invoke-virtual {v3, v7}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 370
    .end local v7    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_a
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->bgUrl:Ljava/lang/String;

    invoke-static {v11}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 371
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->callUsButton:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 372
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->emailUsButton:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 373
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->directionButton:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    .line 374
    iget-object v11, p0, Lcom/biznessapps/contact/ContactsMapActivity;->viewWebsiteButton:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 166
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LOCATION_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/biznessapps/layout/R$layout;->contact_layout:I

    return v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 105
    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/contact/ContactsMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "progressBarContainer":Landroid/view/ViewGroup;
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->initAdsWithAlpha()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->preDataLoading()V

    .line 81
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->initViews()V

    .line 82
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->initListeners()V

    .line 83
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->loadContent()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/contact/ContactsMapActivity;->rootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/contact/ContactsMapActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 95
    invoke-direct {p0}, Lcom/biznessapps/contact/ContactsMapActivity;->loadBgUrl()V

    .line 96
    return-void
.end method

.method protected useMapInfoWindow()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/biznessapps/reservation/ReservationMainFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "ReservationMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/reservation/entities/ReservationEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAST_EVENTS_TYPE:I = 0x2

.field private static final UPCOMING_EVENTS_TYPE:I = 0x1


# instance fields
.field private headerImage:Landroid/widget/ImageView;

.field private loginButton:Landroid/widget/ImageView;

.field private pastEventsButton:Landroid/widget/Button;

.field private refreshButton:Landroid/widget/ImageView;

.field private scheduleButton:Landroid/widget/Button;

.field private searchType:I

.field private upcomingEventsButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->searchType:I

    .line 350
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/reservation/ReservationMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->openScheduleWindow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/reservation/ReservationMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getReservationCenterUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/reservation/ReservationMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/reservation/ReservationMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->loadImages()V

    return-void
.end method

.method static synthetic access$202(Lcom/biznessapps/reservation/ReservationMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->searchType:I

    return p1
.end method

.method static synthetic access$300(Lcom/biznessapps/reservation/ReservationMainFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/reservation/ReservationMainFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/reservation/ReservationMainFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/reservation/ReservationMainFragment;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationMainFragment;->plugListView(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/reservation/ReservationMainFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/reservation/ReservationMainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/reservation/ReservationMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->openLoginWindow()V

    return-void
.end method

.method private getReservationCenterUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    const-string v0, "reserv_center.php?app_code=%s&tab_id=%s&platform=android"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->scheduleButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/reservation/ReservationMainFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationMainFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/reservation/ReservationMainFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationMainFragment$2;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/reservation/ReservationMainFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationMainFragment$3;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->refreshButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationMainFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationMainFragment$4;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->loginButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationMainFragment$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationMainFragment$5;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method private loadImages()V
    .locals 6

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    .line 336
    .local v0, "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 337
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->root:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1, v3, v4, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 340
    :cond_0
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getHeaderImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 342
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 343
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getHeaderImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 344
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 345
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 346
    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 348
    .end local v2    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    return-void
.end method

.method private openAppointmentDetail(Lcom/biznessapps/reservation/entities/ReservationEntity;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/reservation/entities/ReservationEntity;

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationApptDetailViewControllerFromMain"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationApptDetailViewControllerFromMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "TAB_FRAGMENT_DATA"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "tabId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private openLoginWindow()V
    .locals 4

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationLoginViewController"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationLoginViewController"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v2, "TAB_LABEL"

    sget v3, Lcom/biznessapps/layout/R$string;->login:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void
.end method

.method private openScheduleWindow()V
    .locals 4

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->openLoginWindow()V

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationBookViewController"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationBookViewController"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v2, "TAB_LABEL"

    sget v3, Lcom/biznessapps/layout/R$string;->schedule_appointment_button:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 14
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 259
    iget-object v12, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->items:Ljava/util/List;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 260
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 261
    .local v8, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 262
    .local v3, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    iget v12, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->searchType:I

    if-ne v12, v10, :cond_1

    move v9, v10

    .line 263
    .local v9, "showUpcoming":Z
    :goto_0
    iget-object v12, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->items:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/reservation/entities/ReservationEntity;

    .line 264
    .local v7, "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    invoke-virtual {v7}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeTo()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 265
    .local v0, "eventEndTime":J
    invoke-virtual {v7}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getOrderState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    move v5, v10

    .line 266
    .local v5, "isCancelled":Z
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v0

    if-lez v12, :cond_3

    move v6, v10

    .line 268
    .local v6, "isPast":Z
    :goto_3
    if-eqz v9, :cond_4

    .line 270
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    .line 271
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "eventEndTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isCancelled":Z
    .end local v6    # "isPast":Z
    .end local v7    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    .end local v9    # "showUpcoming":Z
    :cond_1
    move v9, v11

    .line 262
    goto :goto_0

    .restart local v0    # "eventEndTime":J
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    .restart local v9    # "showUpcoming":Z
    :cond_2
    move v5, v11

    .line 265
    goto :goto_2

    .restart local v5    # "isCancelled":Z
    :cond_3
    move v6, v11

    .line 266
    goto :goto_3

    .line 275
    .restart local v6    # "isPast":Z
    :cond_4
    if-nez v6, :cond_5

    if-eqz v5, :cond_0

    .line 276
    :cond_5
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .end local v0    # "eventEndTime":J
    .end local v5    # "isCancelled":Z
    .end local v6    # "isPast":Z
    .end local v7    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/reservation/entities/ReservationEntity;

    .line 281
    .restart local v7    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    iget-object v10, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v7, v8, v10}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 283
    .end local v7    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    :cond_7
    new-instance v2, Lcom/biznessapps/reservation/ReservationAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v2, v10, v8, v11}, Lcom/biznessapps/reservation/ReservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 284
    .local v2, "ex":Lcom/biznessapps/reservation/ReservationAdapter;
    iget-object v10, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v10, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->initListViewListener()V

    .line 289
    .end local v2    # "ex":Lcom/biznessapps/reservation/ReservationAdapter;
    .end local v3    # "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    .end local v9    # "showUpcoming":Z
    :goto_5
    return-void

    .line 287
    :cond_8
    iget-object v10, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_5
.end method

.method private updateButtonState(I)V
    .locals 2
    .param p1, "searchType"    # I

    .prologue
    .line 320
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 322
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 324
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 329
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_main_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "reserv_order.php"

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->loginButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->refreshButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->initAdsWithAlpha()V

    .line 211
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 74
    sget v2, Lcom/biznessapps/layout/R$id;->header_image:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->headerImage:Landroid/widget/ImageView;

    .line 75
    sget v2, Lcom/biznessapps/layout/R$id;->upcoming_events_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    .line 76
    sget v2, Lcom/biznessapps/layout/R$id;->past_events_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    .line 77
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 80
    sget v2, Lcom/biznessapps/layout/R$id;->schedule_button_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .local v1, "scheduleButtonContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 82
    sget v2, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 85
    sget v2, Lcom/biznessapps/layout/R$id;->schedule_appointment_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->scheduleButton:Landroid/widget/Button;

    .line 86
    sget v2, Lcom/biznessapps/layout/R$id;->login_icon:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->loginButton:Landroid/widget/ImageView;

    .line 87
    sget v2, Lcom/biznessapps/layout/R$id;->refresh_icon:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->refreshButton:Landroid/widget/ImageView;

    .line 88
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->scheduleButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->scheduleButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->loginButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->refreshButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$color;->transparent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/widgets/RefreshableListView;->setBackgroundColor(I)V

    .line 95
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 97
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->initListeners()V

    .line 98
    iget v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->searchType:I

    invoke-direct {p0, v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->updateButtonState(I)V

    .line 100
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->scheduleButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->schedule_appointment_button:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->upcoming_events:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 102
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;

    sget v3, Lcom/biznessapps/layout/R$string;->past_events:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 103
    return-void
.end method

.method protected loadData()V
    .locals 5

    .prologue
    .line 196
    iget v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->searchType:I

    invoke-direct {p0, v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->updateButtonState(I)V

    .line 197
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "tabId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "token":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 201
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "app_code"

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "tab_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "action"

    const-string v4, "2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "tk"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->loadPostData(Ljava/util/Map;)V

    .line 206
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    sparse-switch p2, :sswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 245
    :sswitch_0
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->loadData()V

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 60
    new-instance v0, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;Lcom/biznessapps/reservation/ReservationMainFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/entities/ReservationEntity;

    .line 108
    .local v0, "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    invoke-direct {p0, v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->openAppointmentDetail(Lcom/biznessapps/reservation/entities/ReservationEntity;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 255
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->loadData()V

    .line 256
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->items:Ljava/util/List;

    .line 217
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "token":Ljava/lang/String;
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasInvalidTokenError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setLoggedIn(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationMainFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/reservation/ReservationUtils;->showInvalidTokenDialog(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 226
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 224
    :cond_1
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseReservationData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment;->items:Ljava/util/List;

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationMainFragment;->plugListView(Landroid/app/Activity;)V

    .line 238
    return-void
.end method

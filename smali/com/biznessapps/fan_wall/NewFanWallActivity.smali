.class public Lcom/biznessapps/fan_wall/NewFanWallActivity;
.super Lcom/biznessapps/common/activities/CommonShareableMapActivity;
.source "NewFanWallActivity.java"


# static fields
.field private static final COMMENTS_TAB_TYPE:I = 0x1

.field private static final MAP_TAB_TYPE:I = 0x2

.field private static final PHOTOS_TAB_TYPE:I = 0x3


# instance fields
.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private commentsListView:Landroid/widget/ListView;

.field private commentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private commentsTitleView:Landroid/widget/TextView;

.field private currentLocation:Landroid/location/Location;

.field private defaultIconBitmap:Landroid/graphics/Bitmap;

.field private galleryView:Landroid/widget/GridView;

.field private handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private hasNearByComments:Z

.field private hasRecentComments:Z

.field private isNearByUsed:Z

.field private loadMoreButton:Lcom/biznessapps/widgets/LoadMoreButton;

.field private loadMoreButtonContainer:Landroid/view/ViewGroup;

.field private mainContainer:Landroid/view/ViewGroup;

.field private mapTitleView:Landroid/widget/TextView;

.field private markerBorderBitmap:Landroid/graphics/Bitmap;

.field private nearByButton:Landroid/widget/Button;

.field private nearByComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private nearByOffset:I

.field private parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private photosTitleView:Landroid/widget/TextView;

.field private recentOffset:I

.field private recentsButton:Landroid/widget/Button;

.field private recentsComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private tabId:Ljava/lang/String;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private usedTabType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByComments:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsComments:Ljava/util/List;

    .line 101
    iput v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    .line 103
    iput v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByOffset:I

    .line 105
    iput v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentOffset:I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsMap:Ljava/util/Map;

    .line 110
    iput-boolean v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->hasRecentComments:Z

    .line 111
    iput-boolean v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->hasNearByComments:Z

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->addComment(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fan_wall/NewFanWallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/fan_wall/NewFanWallActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateButtonsState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/biznessapps/fan_wall/NewFanWallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->handleInBackground()V

    return-void
.end method

.method static synthetic access$1200(Lcom/biznessapps/fan_wall/NewFanWallActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->tryParseData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/fan_wall/NewFanWallActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControlsWithData(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/biznessapps/fan_wall/NewFanWallActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$212(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByOffset:I

    return v0
.end method

.method static synthetic access$312(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadContent()V

    return-void
.end method

.method static synthetic access$502(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    return p1
.end method

.method static synthetic access$600(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControls()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->openCommentsContainer()V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->openMapContainer()V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fan_wall/NewFanWallActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->openPhotosContainer()V

    return-void
.end method

.method private addComment(I)V
    .locals 6
    .param p1, "socialType"    # I

    .prologue
    const/4 v5, 0x1

    .line 394
    move-object v0, p0

    .line 395
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 396
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FAN_ADD_COMMENT_FRAGMENT"

    invoke-static {v4}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "tabParam":Ljava/lang/String;
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v3, "TAB_LABEL"

    sget v4, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v3, "FAN_WALL_USE_PHOTO_OPTION"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-string v3, "YOUTUBE_MODE"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v3, "SELECTED_SOCIAL_TYPE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "FAN_ADD_COMMENT_FRAGMENT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v3, "USE_SPECIAL_MD5_HASH_EXTRA"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "longitude"

    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 408
    const-string v3, "latitude"

    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 410
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "tabParam":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private clearCommentsData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 536
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 538
    iput v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByOffset:I

    .line 539
    iput v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentOffset:I

    .line 540
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 541
    return-void
.end method

.method private getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 544
    new-instance v0, Lcom/biznessapps/fan_wall/NewFanWallActivity$14;

    invoke-direct {v0, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$14;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    return-object v0
.end method

.method private handleInBackground()V
    .locals 5

    .prologue
    .line 435
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 436
    .local v0, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/CommentEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getCache()Lcom/biznessapps/utils/google/caching/ImageCache;

    move-result-object v3

    invoke-static {v2}, Lcom/biznessapps/images/BitmapDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/biznessapps/utils/google/caching/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 441
    .end local v0    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$drawable;->icon_border:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->markerBorderBitmap:Landroid/graphics/Bitmap;

    .line 442
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$drawable;->portrait:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->defaultIconBitmap:Landroid/graphics/Bitmap;

    .line 443
    return-void
.end method

.method private initControls()V
    .locals 6

    .prologue
    .line 197
    sget v4, Lcom/biznessapps/layout/R$id;->main_container:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mainContainer:Landroid/view/ViewGroup;

    .line 198
    sget v4, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 199
    .local v1, "buttonsContainer":Landroid/view/ViewGroup;
    sget v4, Lcom/biznessapps/layout/R$id;->comments_button:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    .line 200
    sget v4, Lcom/biznessapps/layout/R$id;->location_button:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    .line 201
    sget v4, Lcom/biznessapps/layout/R$id;->gallery_button:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    .line 203
    sget v4, Lcom/biznessapps/layout/R$id;->comments_list_view:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsListView:Landroid/widget/ListView;

    .line 204
    sget v4, Lcom/biznessapps/layout/R$id;->gallery_view:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->galleryView:Landroid/widget/GridView;

    .line 206
    sget v4, Lcom/biznessapps/layout/R$id;->recents_button:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    .line 207
    sget v4, Lcom/biznessapps/layout/R$id;->near_by_button:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    .line 209
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    sget v5, Lcom/biznessapps/layout/R$string;->recent:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 210
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    sget v5, Lcom/biznessapps/layout/R$string;->near_by:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 211
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->comments:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->location_title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->gallery_title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 214
    sget v4, Lcom/biznessapps/layout/R$id;->top_buttons_container:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 216
    .local v3, "topButtonsContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 218
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 220
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 221
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 222
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->setBottomTabStyle(Landroid/widget/TextView;)V

    .line 224
    sget v4, Lcom/biznessapps/layout/R$id;->choose_login_account:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 225
    .local v0, "addCommentButton":Landroid/widget/ImageButton;
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mainContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 229
    new-instance v2, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mainContainer:Landroid/view/ViewGroup;

    new-instance v5, Lcom/biznessapps/fan_wall/NewFanWallActivity$1;

    invoke-direct {v5, p0, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$1;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Landroid/content/Context;)V

    invoke-direct {v2, p0, v4, v5}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V

    .line 236
    .local v2, "socialAccessor":Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    new-instance v4, Lcom/biznessapps/fan_wall/NewFanWallActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/biznessapps/fan_wall/NewFanWallActivity$2;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->initLoadMoreButton()V

    .line 245
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControls()V

    .line 246
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/fan_wall/NewFanWallActivity$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$4;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/fan_wall/NewFanWallActivity$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$5;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/fan_wall/NewFanWallActivity$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$6;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fan_wall/NewFanWallActivity$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$8;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 309
    return-void
.end method

.method private initLoadMoreButton()V
    .locals 2

    .prologue
    .line 249
    sget v0, Lcom/biznessapps/layout/R$id;->load_more_button_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButtonContainer:Landroid/view/ViewGroup;

    .line 250
    new-instance v0, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p0, v0, v1}, Lcom/biznessapps/fan_wall/LoadMoreBuilder;->addLoadMoreButton(Landroid/content/Context;Ljava/lang/Runnable;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/widgets/LoadMoreButton;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButton:Lcom/biznessapps/widgets/LoadMoreButton;

    .line 262
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButtonContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButton:Lcom/biznessapps/widgets/LoadMoreButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method private initLocation()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    .line 127
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->addLocationListener(Landroid/location/LocationListener;)V

    .line 128
    return-void
.end method

.method private loadContent()V
    .locals 10

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "TAB_SPECIAL_ID"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->tabId:Ljava/lang/String;

    .line 334
    iget-boolean v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    if-eqz v6, :cond_1

    iget v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByOffset:I

    .line 336
    .local v1, "offset":I
    :goto_0
    const-string v6, "comment_list.php?app_code=%s&id=%s&tab_id=%s&count=%d&offset=%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->tabId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "requestUrl":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    if-eqz v6, :cond_0

    .line 338
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    if-eqz v6, :cond_2

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&latitude="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&longitude="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    :cond_0
    move-object v4, v2

    .line 347
    .local v4, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 348
    .local v3, "savedComments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 349
    iget-boolean v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByComments:Ljava/util/List;

    :goto_1
    iput-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    .line 350
    invoke-direct {p0, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControlsWithData(Landroid/app/Activity;)V

    .line 391
    .end local v3    # "savedComments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    .end local v4    # "url":Ljava/lang/String;
    :goto_2
    return-void

    .line 334
    .end local v1    # "offset":I
    .end local v2    # "requestUrl":Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentOffset:I

    goto/16 :goto_0

    .line 341
    .restart local v1    # "offset":I
    .restart local v2    # "requestUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->location_not_defined:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 349
    .restart local v3    # "savedComments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    .restart local v4    # "url":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsComments:Ljava/util/List;

    goto :goto_1

    .line 353
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v5, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButtonContainer:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 361
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 363
    new-instance v0, Lcom/biznessapps/api/LoadDataTaskExternal;

    invoke-direct {v0, p0, v5}, Lcom/biznessapps/api/LoadDataTaskExternal;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 364
    .local v0, "loadDataTask":Lcom/biznessapps/api/LoadDataTaskExternal;
    invoke-virtual {v0, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;->setRequestUrl(Ljava/lang/String;)V

    .line 365
    new-instance v6, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-direct {v6}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    iput-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 366
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->useCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v6}, Lcom/biznessapps/api/LoadDataTaskExternal;->setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 367
    new-instance v6, Lcom/biznessapps/fan_wall/NewFanWallActivity$9;

    invoke-direct {v6, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$9;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    iput-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 373
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v6}, Lcom/biznessapps/api/LoadDataTaskExternal;->setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 374
    new-instance v6, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;

    invoke-direct {v6, p0, v4}, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 381
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v6}, Lcom/biznessapps/api/LoadDataTaskExternal;->setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 382
    new-instance v6, Lcom/biznessapps/fan_wall/NewFanWallActivity$11;

    invoke-direct {v6, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$11;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    iput-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 388
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v0, v6}, Lcom/biznessapps/api/LoadDataTaskExternal;->setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V

    .line 389
    invoke-virtual {v0}, Lcom/biznessapps/api/LoadDataTaskExternal;->launch()V

    goto/16 :goto_2
.end method

.method private openCommentsContainer()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-virtual {v3}, Lcom/biznessapps/fan_wall/CommentEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 487
    .local v1, "isEmpty":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 488
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 489
    sget v3, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-static {p0, v3}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    .line 514
    :goto_0
    return-void

    .line 491
    :cond_2
    const/4 v2, 0x1

    .line 492
    .local v2, "isParentAdapter":Z
    new-instance v0, Lcom/biznessapps/fan_wall/NewFanWallAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    iget-object v5, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/biznessapps/fan_wall/NewFanWallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/biznessapps/api/UiSettings;)V

    .line 493
    .local v0, "ex":Lcom/biznessapps/fan_wall/NewFanWallAdapter;
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 494
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsListView:Landroid/widget/ListView;

    new-instance v4, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;

    invoke-direct {v4, p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private openMapContainer()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->addPins(Ljava/util/List;)V

    .line 518
    return-void
.end method

.method private openPhotosContainer()V
    .locals 10

    .prologue
    .line 458
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v5, "photos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 460
    .local v1, "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getUploadImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getUploadImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    .end local v1    # "comment":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_1
    new-instance v2, Lcom/biznessapps/gallery/GalleryData;

    invoke-direct {v2}, Lcom/biznessapps/gallery/GalleryData;-><init>()V

    .line 465
    .local v2, "galleryData":Lcom/biznessapps/gallery/GalleryData;
    invoke-virtual {v2, v5}, Lcom/biznessapps/gallery/GalleryData;->setImageItems(Ljava/util/List;)V

    .line 466
    new-instance v0, Lcom/biznessapps/common/adapters/ImageAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/biznessapps/gallery/GalleryData;->getItems()Ljava/util/List;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$layout;->gallery_item_layout:I

    iget-object v9, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/biznessapps/common/adapters/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 467
    .local v0, "adapter":Lcom/biznessapps/common/adapters/ImageAdapter;
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->galleryView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    new-instance v4, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;

    invoke-direct {v4, p0, v2}, Lcom/biznessapps/fan_wall/NewFanWallActivity$12;-><init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Lcom/biznessapps/gallery/GalleryData;)V

    .line 482
    .local v4, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->galleryView:Landroid/widget/GridView;

    invoke-virtual {v6, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 483
    return-void
.end method

.method private tryParseData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "dataToParse"    # Ljava/lang/String;
    .param p2, "requestUrl"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 416
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseFanComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 417
    .local v1, "newChunk":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    iget-boolean v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByComments:Ljava/util/List;

    :goto_0
    iput-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    .line 418
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getBackground()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->setBgUrl(Ljava/lang/String;)V

    .line 421
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/CommentEntity;

    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    .line 422
    .local v0, "isNotEmpty":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 423
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->comments:Ljava/util/List;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_1
    iget-boolean v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    if-eqz v2, :cond_5

    .line 427
    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->hasNearByComments:Z

    .line 431
    :goto_3
    return v3

    .line 417
    .end local v0    # "isNotEmpty":Z
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsComments:Ljava/util/List;

    goto :goto_0

    :cond_3
    move v0, v4

    .line 421
    goto :goto_1

    .restart local v0    # "isNotEmpty":Z
    :cond_4
    move v2, v4

    .line 427
    goto :goto_2

    .line 429
    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_6

    move v4, v3

    :cond_6
    iput-boolean v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->hasRecentComments:Z

    goto :goto_3
.end method

.method private updateButtonsState(Z)V
    .locals 2
    .param p1, "isNearByUsed"    # Z

    .prologue
    .line 521
    if-eqz p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 523
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 525
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 528
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentsButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 530
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateControls()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/16 v2, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButtonContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->hasNearByComments:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v0, v5, :cond_1

    .line 316
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadMoreButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 319
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsListView:Landroid/widget/ListView;

    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 320
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v0, v5, :cond_6

    move v0, v3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->setMapVisibility(Z)V

    .line 321
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->galleryView:Landroid/widget/GridView;

    iget v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v4, v6, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 324
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v0, v5, :cond_8

    move v0, v3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 325
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    if-ne v0, v6, :cond_9

    move v0, v3

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 326
    new-array v0, v6, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->updateTextViewIconState([Landroid/widget/TextView;)V

    .line 327
    return-void

    .line 312
    :cond_3
    iget-boolean v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->hasRecentComments:Z

    if-nez v0, :cond_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    .line 319
    goto :goto_1

    :cond_6
    move v0, v1

    .line 320
    goto :goto_2

    :cond_7
    move v0, v1

    .line 323
    goto :goto_3

    :cond_8
    move v0, v1

    .line 324
    goto :goto_4

    :cond_9
    move v0, v1

    .line 325
    goto :goto_5
.end method

.method private updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 446
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->applyBackground()V

    .line 455
    return-void

    .line 448
    :cond_1
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 449
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->photosTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 450
    :cond_2
    iget v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mapTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/biznessapps/layout/R$layout;->new_fan_wall_layout:I

    return v0
.end method

.method protected getMarkerOptions(Lcom/google/android/gms/maps/model/LatLng;Lcom/biznessapps/common/entities/MapEntity;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 5
    .param p1, "myLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "item"    # Lcom/biznessapps/common/entities/MapEntity;

    .prologue
    .line 185
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {p2}, Lcom/biznessapps/common/entities/MapEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->getImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 186
    .local v2, "pinIcon":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->defaultIconBitmap:Landroid/graphics/Bitmap;

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->markerBorderBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcom/biznessapps/location/MapUtils;->createComboBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "combinedBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 193
    .local v1, "mo":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v1
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 156
    sget v1, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    .local v0, "progressBarContainer":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->mainContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->initAdsWithAlpha()V

    .line 181
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    packed-switch p2, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->clearCommentsData()V

    .line 149
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadContent()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->initLocation()V

    .line 121
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->initControls()V

    .line 122
    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->initListeners()V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity;->commentsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-direct {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/components/LocationFinder;->removeLocationListener(Landroid/location/LocationListener;)V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onResume()V

    .line 163
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->startSearching()V

    .line 164
    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->applyBackground()V

    .line 165
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableMapActivity;->onStop()V

    .line 175
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/components/LocationFinder;->stopSearching()V

    .line 176
    return-void
.end method

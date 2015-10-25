.class public Lcom/biznessapps/home_screen/HomeAnimation;
.super Ljava/lang/Object;
.source "HomeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x1770

.field private static final SWITCH_IMAGE_EVENT:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentPos:I

.field private eventHandler:Landroid/os/Handler;

.field protected fadeInAnimation:Landroid/view/animation/Animation;

.field protected fadeOutAnimation:Landroid/view/animation/Animation;

.field private pager:Lcom/biznessapps/widgets/ExtendedViewPager;

.field private pagerAdapter:Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useFadeAnimation:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biznessapps/widgets/ExtendedViewPager;Ljava/util/List;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pager"    # Lcom/biznessapps/widgets/ExtendedViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/biznessapps/widgets/ExtendedViewPager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I

    .line 56
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeAnimation;->pager:Lcom/biznessapps/widgets/ExtendedViewPager;

    .line 58
    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeAnimation;->urls:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeAnimation;->imagePreLoading()V

    .line 61
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getAnimationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->useFadeAnimation:Z

    .line 62
    iget-boolean v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->useFadeAnimation:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$anim;->fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$anim;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 66
    :cond_1
    new-instance v0, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;

    invoke-direct {v0, p0, p3}, Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/util/List;)V

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->pagerAdapter:Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;

    .line 67
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->pagerAdapter:Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;

    invoke-virtual {p2, v0}, Lcom/biznessapps/widgets/ExtendedViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 68
    new-instance v0, Lcom/biznessapps/home_screen/HomeAnimation$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/home_screen/HomeAnimation$1;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;)V

    invoke-virtual {p2, v0}, Lcom/biznessapps/widgets/ExtendedViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/home_screen/HomeAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/home_screen/HomeAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I

    return p1
.end method

.method static synthetic access$008(Lcom/biznessapps/home_screen/HomeAnimation;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->currentPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/biznessapps/home_screen/HomeAnimation;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/home_screen/HomeAnimation;->setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/home_screen/HomeAnimation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->urls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/home_screen/HomeAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->useFadeAnimation:Z

    return v0
.end method

.method static synthetic access$500(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/home_screen/HomeAnimation;->setImageWithAnimation(Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/biznessapps/home_screen/HomeAnimation;->initEventHandler(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/home_screen/HomeAnimation;)Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->pagerAdapter:Lcom/biznessapps/home_screen/HomeAnimation$CustomPagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/home_screen/HomeAnimation;)Lcom/biznessapps/widgets/ExtendedViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->pager:Lcom/biznessapps/widgets/ExtendedViewPager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/home_screen/HomeAnimation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/biznessapps/home_screen/HomeAnimation;->sendChangeImageMessage(I)V

    return-void
.end method

.method private imagePreLoading()V
    .locals 7

    .prologue
    .line 239
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeAnimation;->urls:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    .local v3, "url":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 241
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 243
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v5

    invoke-static {v3, v5}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "urlToLoad":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 245
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 246
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 247
    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    goto :goto_0

    .line 249
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v2    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "urlToLoad":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initEventHandler(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getAnimationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/biznessapps/home_screen/HomeAnimation$5;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/biznessapps/home_screen/HomeAnimation$5;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/os/Looper;Ljava/util/List;)V

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    .line 218
    const/16 v0, 0x1770

    invoke-direct {p0, v0}, Lcom/biznessapps/home_screen/HomeAnimation;->sendChangeImageMessage(I)V

    .line 221
    :cond_0
    return-void
.end method

.method private sendChangeImageMessage(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    const/4 v2, 0x1

    .line 90
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 95
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "itemContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 145
    sget v7, Lcom/biznessapps/layout/R$id;->progressBar:I

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 146
    .local v3, "progressBar":Landroid/widget/ProgressBar;
    sget v7, Lcom/biznessapps/layout/R$id;->home_image_view1:I

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, "imageView":Landroid/view/View;
    sget v7, Lcom/biznessapps/layout/R$id;->home_image_view2:I

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 148
    .local v5, "secondView":Landroid/view/View;
    new-instance v7, Lcom/biznessapps/home_screen/HomeAnimation$2;

    invoke-direct {v7, p0, p1}, Lcom/biznessapps/home_screen/HomeAnimation$2;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v4, Lcom/biznessapps/home_screen/HomeAnimation$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/home_screen/HomeAnimation$3;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;)V

    .line 164
    .local v4, "run":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v1, v4, v7}, Lcom/biznessapps/utils/ViewUtils;->addUpDownGestureListener(Landroid/view/View;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 166
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 168
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 169
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v7

    invoke-static {p1, v7}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "urlToLoad":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 171
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 172
    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 173
    new-instance v7, Lcom/biznessapps/home_screen/HomeAnimation$4;

    invoke-direct {v7, p0, v1, v5, v3}, Lcom/biznessapps/home_screen/HomeAnimation$4;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/view/View;Landroid/view/View;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v7}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 188
    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 189
    return-void
.end method

.method private setImageWithAnimation(Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->fadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/biznessapps/home_screen/HomeAnimation$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/biznessapps/home_screen/HomeAnimation$6;-><init>(Lcom/biznessapps/home_screen/HomeAnimation;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->fadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    return-void
.end method


# virtual methods
.method public stop()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeAnimation;->pager:Lcom/biznessapps/widgets/ExtendedViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/ExtendedViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 87
    return-void
.end method

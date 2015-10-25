.class public Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
.super Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;
.source "AdvancedKenBurnsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x2710


# instance fields
.field private currentPosition:I

.field private imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

.field private kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .line 32
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object p0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .line 42
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;)[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;)Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    invoke-direct {v0}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;-><init>()V

    .line 47
    .local v0, "transGen":Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->setTransitionDuration(J)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->setTransGen(Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->currentPosition:I

    return v0
.end method

.method public setItems(Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V
    .locals 6
    .param p2, "imageFetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/biznessapps/utils/google/caching/ImageFetcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 53
    .local v1, "size":I
    new-array v2, v1, [Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    iput-object v2, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 55
    iget-object v4, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    new-instance v5, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    sget-object v3, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->RIGHT_TO_LEFT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    :goto_1
    invoke-direct {v5, v2, v3}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;-><init>(Ljava/lang/String;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    aput-object v5, v4, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    sget-object v3, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->LEFT_TO_RIGHT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    goto :goto_1

    .line 58
    :cond_1
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 59
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->showImage(I)V

    .line 60
    return-void
.end method

.method public setItems([Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V
    .locals 1
    .param p1, "items"    # [Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;
    .param p2, "imageFetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    .line 64
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->showImage(I)V

    .line 66
    return-void
.end method

.method public showImage(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 69
    iget-object v4, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    array-length v4, v4

    rem-int v1, p1, v4

    .line 70
    .local v1, "newIndex":I
    iput v1, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->currentPosition:I

    .line 71
    new-instance v0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;-><init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;I)V

    .line 78
    .local v0, "imageLoadCallback":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    new-instance v2, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 79
    .local v2, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v4, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->items:[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, p0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 82
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 83
    invoke-virtual {v2, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 84
    iget-object v4, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v4, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 85
    return-void
.end method

.method public showNextImage()V
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->showImage(I)V

    .line 89
    return-void
.end method

.method public startAutoFlipTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x2710

    .line 92
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->timer:Ljava/util/Timer;

    .line 93
    new-instance v1, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;-><init>(Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$1;)V

    .line 94
    .local v1, "nextImageTask":Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView$NextImageTask;
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->timer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 95
    return-void
.end method

.method public stopAutoFlipTimer()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 101
    :cond_0
    return-void
.end method

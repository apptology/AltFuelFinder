.class public Lcom/biznessapps/home_screen/components/ModernAnimationComponent;
.super Ljava/lang/Object;
.source "ModernAnimationComponent.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

.field private parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biznessapps/common/entities/AppSettings;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "settings"    # Lcom/biznessapps/common/entities/AppSettings;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->activity:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    return-object v0
.end method


# virtual methods
.method public init(ILjava/util/List;Landroid/view/View;)V
    .locals 5
    .param p1, "animationMode"    # I
    .param p3, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "imagesUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 40
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    if-ne p1, v4, :cond_1

    .line 41
    sget v2, Lcom/biznessapps/layout/R$id;->view_pager:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    iput-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .line 42
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v2, v3}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setVisibility(I)V

    .line 43
    new-instance v1, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-direct {v1, v2, p2, v0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;-><init>(Landroid/support/v4/view/ViewPager;Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V

    .line 44
    .local v1, "myAdapter":Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v2, v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v2, v4, v3}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setCurrentItem(IZ)V

    .line 46
    new-instance v2, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$1;-><init>(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->setOnItemClickListener(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;)V

    .line 66
    .end local v1    # "myAdapter":Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 54
    sget v2, Lcom/biznessapps/layout/R$id;->ken_burns_view:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    iput-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .line 55
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v2, v3}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    new-instance v3, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent$2;-><init>(Lcom/biznessapps/home_screen/components/ModernAnimationComponent;)V

    invoke-virtual {v2, v3}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v2, p2, v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->setItems(Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->startAutoFlipTimer()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->startAutoFlipTimer()V

    .line 75
    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->parallaxPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->stopAutoFlipTimer()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->stopAutoFlipTimer()V

    .line 84
    :cond_1
    return-void
.end method

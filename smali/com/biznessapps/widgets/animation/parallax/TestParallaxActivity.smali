.class public Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TestParallaxActivity.java"


# instance fields
.field private kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

.field private myAdapter:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

.field private myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v6, Lcom/biznessapps/layout/R$layout;->parallax_test_layout:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->setContentView(I)V

    .line 29
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 30
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 32
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 34
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    sget v6, Lcom/biznessapps/layout/R$id;->view_pager:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    iput-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .line 35
    iget-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setBackgroundColor(I)V

    .line 49
    const-string v2, "http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg99.jpg?modified=1408005980&width=720"

    .line 50
    .local v2, "url1":Ljava/lang/String;
    const-string v3, "http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg98.jpg?modified=1406279926&width=720"

    .line 51
    .local v3, "url2":Ljava/lang/String;
    const-string v4, "http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg94.jpg?modified=1406279485&width=720"

    .line 53
    .local v4, "url3":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v5, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v6, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    iget-object v7, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-direct {v6, v7, v5, v0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;-><init>(Landroid/support/v4/view/ViewPager;Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V

    iput-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myAdapter:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    .line 61
    iget-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    iget-object v7, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myAdapter:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    iget-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v6, v9, v8}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setCurrentItem(IZ)V

    .line 64
    sget v6, Lcom/biznessapps/layout/R$id;->ken_burns_view:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    iput-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    .line 66
    const/4 v6, 0x3

    new-array v1, v6, [Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    .line 67
    .local v1, "items":[Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;
    new-instance v6, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    sget-object v7, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->RIGHT_TO_LEFT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {v6, v3, v7}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;-><init>(Ljava/lang/String;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    aput-object v6, v1, v8

    .line 68
    new-instance v6, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;

    sget-object v7, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->LEFT_TO_RIGHT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {v6, v4, v7}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;-><init>(Ljava/lang/String;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    aput-object v6, v1, v9

    .line 73
    iget-object v6, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v6, v1, v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->setItems([Lcom/biznessapps/widgets/animation/kenburns/KenBurnsEntity;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->stopAutoFlipTimer()V

    .line 86
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->stopAutoFlipTimer()V

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->myPager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->startAutoFlipTimer()V

    .line 79
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/TestParallaxActivity;->kenBurnsView:Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/animation/kenburns/AdvancedKenBurnsView;->startAutoFlipTimer()V

    .line 80
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 81
    return-void
.end method

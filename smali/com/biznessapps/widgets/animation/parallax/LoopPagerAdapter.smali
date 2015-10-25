.class public Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoopPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private currentPos:I

.field private firstItem:Landroid/view/View;

.field private imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

.field private inflater:Landroid/view/LayoutInflater;

.field private lastItem:Landroid/view/View;

.field private onItemClickListener:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;

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


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;Ljava/util/List;Lcom/biznessapps/utils/google/caching/ImageFetcher;)V
    .locals 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p3, "imageFetcher"    # Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/ViewPager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/biznessapps/utils/google/caching/ImageFetcher;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 39
    iput v2, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->currentPos:I

    .line 43
    iput-object p3, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 50
    new-instance v0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$1;-><init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 73
    new-instance v0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$2;-><init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    .prologue
    .line 31
    iget v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->currentPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->currentPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;)Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->onItemClickListener:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;

    return-object v0
.end method

.method private createViewPagerItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v5, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/biznessapps/layout/R$layout;->parallax_image_item:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/biznessapps/layout/R$id;->imageView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 117
    .local v1, "image":Landroid/widget/ImageView;
    new-instance v2, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;-><init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;Landroid/widget/ImageView;)V

    .line 161
    .local v2, "imageLoadCallback":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 162
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v5

    invoke-static {p2, v5}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "correctedUrl":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 165
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 166
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 167
    invoke-virtual {v3, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 168
    iget-object v5, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v5, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 169
    return-object v4
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-eq p2, v0, :cond_0

    .line 176
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 95
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->firstItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->createViewPagerItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->firstItem:Landroid/view/View;

    .line 98
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->firstItem:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->firstItem:Landroid/view/View;

    .line 111
    .local v0, "result":Landroid/view/View;
    :goto_0
    return-object v0

    .line 101
    .end local v0    # "result":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne p2, v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->lastItem:Landroid/view/View;

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->createViewPagerItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->lastItem:Landroid/view/View;

    .line 104
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->lastItem:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->lastItem:Landroid/view/View;

    .restart local v0    # "result":Landroid/view/View;
    goto :goto_0

    .line 108
    .end local v0    # "result":Landroid/view/View;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->urls:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->createViewPagerItem(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 109
    .restart local v0    # "result":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 182
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter;->onItemClickListener:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$OnItemClickListener;

    .line 84
    return-void
.end method

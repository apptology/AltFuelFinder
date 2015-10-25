.class Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ResellerDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reseller/ResellerDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private appsContainer:Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;

.field final synthetic this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 373
    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->messageView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$900(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    new-instance v0, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;

    invoke-direct {v0, p1, p2}, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->appsContainer:Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;

    .line 375
    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->circlesContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$100(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->appsContainer:Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->addCircles(Landroid/view/ViewGroup;I)V

    .line 376
    return-void

    .line 373
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private addCircles(Landroid/view/ViewGroup;I)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "size"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 434
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 435
    iget-object v3, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v3}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->circle_image:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 436
    .local v0, "circleImage":Landroid/widget/ImageView;
    invoke-virtual {v0, v5, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 437
    if-nez v1, :cond_0

    .line 438
    sget v3, Lcom/biznessapps/layout/R$drawable;->selected_circle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$drawable;->unselected_circle:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 444
    .end local v0    # "circleImage":Landroid/widget/ImageView;
    :cond_1
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 445
    return-void

    .line 444
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private setAppsToView(Ljava/util/List;Landroid/widget/GridView;)V
    .locals 3
    .param p2, "gridView"    # Landroid/widget/GridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;",
            "Landroid/widget/GridView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    new-instance v0, Lcom/biznessapps/reseller/AppGridAdapter;

    iget-object v1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    # getter for: Lcom/biznessapps/reseller/ResellerDashboardFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->access$1000(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/biznessapps/reseller/AppGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 405
    .local v0, "adapter":Lcom/biznessapps/reseller/AppGridAdapter;
    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    new-instance v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    new-instance v1, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 395
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 396
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->appsContainer:Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 385
    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->appsContainer:Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;

    invoke-virtual {v2, p2}, Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;->getList(I)Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    iget-object v2, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->this$0:Lcom/biznessapps/reseller/ResellerDashboardFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$layout;->reseller_gridview_layout:I

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 388
    .local v1, "itemContainer":Landroid/widget/GridView;
    invoke-direct {p0, v0, v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->setAppsToView(Ljava/util/List;Landroid/widget/GridView;)V

    .line 389
    invoke-virtual {p1, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 390
    return-object v1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 400
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

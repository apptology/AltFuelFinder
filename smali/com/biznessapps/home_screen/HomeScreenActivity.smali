.class public Lcom/biznessapps/home_screen/HomeScreenActivity;
.super Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;,
        Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;
    }
.end annotation


# static fields
.field public static final INTENT_PARAM_KEY_POST_DEVTOKEN_RESPONSE:Ljava/lang/String; = "post_dev_token_response"

.field private static final NEWS_FEED_EVENT:I = 0x1

.field private static final NEWS_FEED_EVENT_DELAY:I = 0xfa0

.field private static final NEWS_FEED_SCROLL:I = 0x2

.field private static final NEWS_FEED_SCROLL_DELAY:I = 0x7d0


# instance fields
.field private appSettings:Lcom/biznessapps/common/entities/AppSettings;

.field private columnCount:I

.field private currentTabIndex:I

.field private exitToReseller:Z

.field private hasMoreButtonNavigation:Z

.field private headerView:Landroid/widget/ImageView;

.field private homeAnimationComponent:Lcom/biznessapps/home_screen/HomeAnimation;

.field private homeBgUrl:Ljava/lang/String;

.field private layoutId:I

.field private localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

.field private menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

.field private modernAnimationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

.field private newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

.field private newsFeedHandler:Landroid/os/Handler;

.field private newsItemIndex:I

.field private rootView:Landroid/view/ViewGroup;

.field private rowCount:I

.field private searchText:Ljava/lang/String;

.field private tabCircles:Landroid/view/ViewGroup;

.field private tabEventHandler:Landroid/os/Handler;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private useModernLayout:Z

.field private useNewHomeTabMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I

    .line 136
    new-instance v0, Lcom/biznessapps/home_screen/HomeScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/home_screen/HomeScreenActivity$1;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    .line 577
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/common/entities/AppSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsFeedHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/biznessapps/home_screen/HomeScreenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/biznessapps/home_screen/HomeScreenActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I

    return p1
.end method

.method static synthetic access$1708(Lcom/biznessapps/home_screen/HomeScreenActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsItemIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/home_screen/HomeScreenActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->sendMessageToHandler(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/biznessapps/home_screen/HomeScreenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I

    return v0
.end method

.method static synthetic access$1910(Lcom/biznessapps/home_screen/HomeScreenActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/biznessapps/home_screen/HomeScreenActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/biznessapps/home_screen/HomeScreenActivity;ILandroid/os/Handler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->sendChangeTabMessage(ILandroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/biznessapps/home_screen/HomeScreenActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->exitToReseller:Z

    return p1
.end method

.method static synthetic access$500(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lnet/simonvt/menudrawer/MenuDrawer;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->searchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/biznessapps/home_screen/HomeScreenActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;Ljava/util/List;Z)V
    .locals 2
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p3, "useMoreOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p2, "rowsTab":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    new-instance v0, Lcom/biznessapps/api/navigation/NavigationManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/api/navigation/NavigationManager;-><init>(Landroid/app/Activity;I)V

    .line 698
    .local v0, "navigManagerRow":Lcom/biznessapps/api/navigation/NavigationManager;
    if-eqz p3, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->setSideTabLimit()V

    .line 703
    :goto_0
    invoke-virtual {v0, p2}, Lcom/biznessapps/api/navigation/NavigationManager;->setRowTabsItems(Ljava/util/List;)V

    .line 704
    invoke-virtual {v0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->addLayoutTo(Landroid/view/ViewGroup;)V

    .line 705
    iget v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabsLimit(I)V

    .line 706
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->updateTabs()V

    .line 707
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->resetTabsSelection()V

    .line 708
    return-void

    .line 701
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/navigation/NavigationManager;->setUseUnlimitTabCount(Z)V

    goto :goto_0
.end method

.method private defineNavigation()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 676
    sget v4, Lcom/biznessapps/layout/R$id;->horisontal_tab_container:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 677
    .local v0, "horizontalNavContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 678
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 679
    .local v2, "params2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 680
    const/16 v4, 0x30

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 681
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 694
    .end local v2    # "params2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v4

    if-nez v4, :cond_2

    .line 684
    sget v4, Lcom/biznessapps/layout/R$id;->myGrid:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 685
    .local v1, "leftGrid":Landroid/view/ViewGroup;
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 686
    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    iget-boolean v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->hasMoreButtonNavigation:Z

    invoke-direct {p0, v1, v4, v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->addRow(Landroid/view/ViewGroup;Ljava/util/List;Z)V

    .line 687
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 688
    .end local v1    # "leftGrid":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 689
    sget v4, Lcom/biznessapps/layout/R$id;->myGrid2:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 690
    .local v3, "rightGrid":Landroid/view/ViewGroup;
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 691
    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    iget-boolean v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->hasMoreButtonNavigation:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->addRow(Landroid/view/ViewGroup;Ljava/util/List;Z)V

    .line 692
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private defineRowLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x5

    .line 713
    iget-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->hasMoreButtonNavigation:Z

    if-eqz v0, :cond_2

    .line 714
    iput v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    .line 715
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getCols()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    .line 716
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    if-le v0, v1, :cond_1

    .line 717
    :cond_0
    iput v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    .line 719
    :cond_1
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_1row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    .line 748
    :goto_0
    return-void

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getRows()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    .line 722
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getCols()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    .line 724
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 725
    iput v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    .line 729
    :cond_3
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    if-le v0, v4, :cond_5

    .line 730
    :cond_4
    iput v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    .line 732
    :cond_5
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    if-le v0, v1, :cond_7

    .line 733
    :cond_6
    iput v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    .line 736
    :cond_7
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 737
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_2row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    goto :goto_0

    .line 738
    :cond_8
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    if-ne v0, v3, :cond_9

    .line 739
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_3row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    goto :goto_0

    .line 740
    :cond_9
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    if-ne v0, v4, :cond_a

    .line 741
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_4row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    goto :goto_0

    .line 745
    :cond_a
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_1row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    goto :goto_0
.end method

.method private defineShortLinks()V
    .locals 17

    .prologue
    .line 376
    sget v15, Lcom/biznessapps/layout/R$id;->message_link_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 377
    .local v8, "messageLinkIcon":Landroid/widget/ImageView;
    sget v15, Lcom/biznessapps/layout/R$id;->music_link_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 378
    .local v11, "musicLinkIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconUsed()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconUsed()Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 381
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    .local v5, "lpMusic":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconLeft()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v7, 0x3

    .line 383
    .local v7, "messageHorisontalGravity":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconLeft()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v10, 0x3

    .line 384
    .local v10, "musicHorisontalGravity":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconTop()Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v9, 0x30

    .line 385
    .local v9, "messageVerticalGravity":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconTop()Z

    move-result v15

    if-eqz v15, :cond_c

    const/16 v12, 0x30

    .line 387
    .local v12, "musicVerticalGravity":I
    :goto_5
    sget v15, Lcom/biznessapps/layout/R$id;->home_layout_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 388
    .local v2, "homeLayoutIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-nez v15, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v15

    if-nez v15, :cond_e

    .line 392
    const/4 v7, 0x5

    .line 393
    const/4 v10, 0x5

    .line 399
    :cond_0
    :goto_7
    or-int v15, v7, v9

    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 400
    or-int v15, v10, v12

    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/biznessapps/layout/R$dimen;->thumbnail_size_small:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 403
    .local v6, "margin":I
    if-ne v9, v12, :cond_3

    .line 404
    const/4 v15, 0x3

    if-ne v7, v15, :cond_11

    if-ne v7, v10, :cond_11

    .line 405
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_f

    move v15, v6

    :goto_8
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 406
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_10

    mul-int/lit8 v15, v6, 0x2

    :goto_9
    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 412
    :cond_1
    :goto_a
    const/4 v15, 0x5

    if-ne v7, v15, :cond_2

    if-ne v7, v10, :cond_2

    .line 413
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 417
    :cond_2
    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 418
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_13

    .end local v6    # "margin":I
    :goto_b
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 419
    const/4 v15, 0x0

    iput v15, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 423
    :cond_3
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    const-string v15, "messagesviewcontroller"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const-string v15, "MusicViewController"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMusicIconUsed()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v15

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 431
    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/biznessapps/common/entities/AppSettings;->getMusicIconOpacity()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/biznessapps/utils/ViewUtils;->setOpacity(Landroid/graphics/drawable/Drawable;I)V

    .line 433
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->isMessageIconUsed()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 434
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v15

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 436
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/biznessapps/common/entities/AppSettings;->getMessageIconOpacity()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/biznessapps/utils/ViewUtils;->setOpacity(Landroid/graphics/drawable/Drawable;I)V

    .line 438
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_6

    .line 439
    sget v15, Lcom/biznessapps/layout/R$id;->left_content:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 440
    .local v3, "ll":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v15}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 442
    sget v15, Lcom/biznessapps/layout/R$id;->search_icon_close:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 444
    .local v1, "closeView":Landroid/widget/ImageView;
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v15

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v15

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 449
    new-instance v14, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Lcom/biznessapps/home_screen/HomeScreenActivity$1;)V

    .line 450
    .local v14, "setHomeBgAsyncTask":Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 452
    new-instance v15, Lcom/biznessapps/home_screen/HomeScreenActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity$4;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    .end local v1    # "closeView":Landroid/widget/ImageView;
    .end local v3    # "ll":Landroid/widget/LinearLayout;
    .end local v14    # "setHomeBgAsyncTask":Lcom/biznessapps/home_screen/HomeScreenActivity$SetHomeBgAsyncTask;
    :cond_6
    new-instance v13, Lcom/biznessapps/home_screen/HomeScreenActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity$5;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    .line 469
    .local v13, "run":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v13, v0}, Lcom/biznessapps/utils/ViewUtils;->addUpDownGestureListener(Landroid/view/View;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->loadNewsIfUsed()V

    .line 471
    return-void

    .line 378
    .end local v2    # "homeLayoutIcon":Landroid/widget/ImageView;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "lpMusic":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "messageHorisontalGravity":I
    .end local v9    # "messageVerticalGravity":I
    .end local v10    # "musicHorisontalGravity":I
    .end local v12    # "musicVerticalGravity":I
    .end local v13    # "run":Ljava/lang/Runnable;
    :cond_7
    const/16 v15, 0x8

    goto/16 :goto_0

    .line 379
    :cond_8
    const/16 v15, 0x8

    goto/16 :goto_1

    .line 382
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "lpMusic":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    const/4 v7, 0x5

    goto/16 :goto_2

    .line 383
    .restart local v7    # "messageHorisontalGravity":I
    :cond_a
    const/4 v10, 0x5

    goto/16 :goto_3

    .line 384
    .restart local v10    # "musicHorisontalGravity":I
    :cond_b
    const/16 v9, 0x50

    goto/16 :goto_4

    .line 385
    .restart local v9    # "messageVerticalGravity":I
    :cond_c
    const/16 v12, 0x50

    goto/16 :goto_5

    .line 388
    .restart local v2    # "homeLayoutIcon":Landroid/widget/ImageView;
    .restart local v12    # "musicVerticalGravity":I
    :cond_d
    const/16 v15, 0x8

    goto/16 :goto_6

    .line 394
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v15}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 395
    const/4 v7, 0x3

    .line 396
    const/4 v10, 0x3

    goto/16 :goto_7

    .line 405
    .restart local v6    # "margin":I
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_10
    move v15, v6

    .line 406
    goto/16 :goto_9

    .line 407
    :cond_11
    const/4 v15, 0x3

    if-ne v7, v15, :cond_12

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_12

    .line 408
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_a

    .line 409
    :cond_12
    const/4 v15, 0x3

    if-ne v10, v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v15, :cond_1

    .line 410
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_a

    .line 418
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_b
.end method

.method private getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "viewControoler"    # Ljava/lang/String;

    .prologue
    .line 655
    new-instance v0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$10;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private initHomeMenu()V
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 474
    invoke-static {p0, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->attach(Landroid/app/Activity;I)Lnet/simonvt/menudrawer/MenuDrawer;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    .line 475
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    iget v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    invoke-virtual {v1, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->setContentView(I)V

    .line 476
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1, v0}, Lnet/simonvt/menudrawer/MenuDrawer;->setDropShadowEnabled(Z)V

    .line 477
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1, v4}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu(Z)V

    .line 478
    sget v1, Lcom/biznessapps/layout/R$layout;->home_menu_layout:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 479
    .local v8, "menuDrawerView":Landroid/view/View;
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v1, v8}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 481
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 482
    .local v4, "isListLayout":Z
    :goto_0
    if-eqz v4, :cond_1

    const v13, 0x3f4ccccd    # 0.8f

    .line 483
    .local v13, "widthKoef":F
    :goto_1
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v3, v0

    .line 484
    .local v3, "menuSize":I
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->setMenuSize(I)V

    .line 487
    sget v0, Lcom/biznessapps/layout/R$id;->home_menu_root:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 488
    .local v12, "homeMenuRoot":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v12, v0}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    move-object v1, v8

    .line 490
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v6, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->searchText:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/biznessapps/home_screen/HomeScreenHelper;->setTabsToSlider(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;IZLcom/biznessapps/api/UiSettings;Ljava/lang/String;)V

    .line 491
    sget v0, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 492
    .local v7, "searchEditText":Landroid/widget/EditText;
    sget v0, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 493
    new-instance v0, Lcom/biznessapps/home_screen/HomeScreenActivity$6;

    invoke-direct {v0, p0, v8, v3, v4}, Lcom/biznessapps/home_screen/HomeScreenActivity$6;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/view/View;IZ)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 507
    new-instance v0, Lcom/biznessapps/home_screen/HomeScreenActivity$7;

    invoke-direct {v0, p0, v7}, Lcom/biznessapps/home_screen/HomeScreenActivity$7;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/widget/EditText;)V

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 513
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->menuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    new-instance v1, Lcom/biznessapps/home_screen/HomeScreenActivity$8;

    invoke-direct {v1, p0, v7}, Lcom/biznessapps/home_screen/HomeScreenActivity$8;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->setOnDrawerStateChangeListener(Lnet/simonvt/menudrawer/MenuDrawer$OnDrawerStateChangeListener;)V

    .line 522
    sget v0, Lcom/biznessapps/layout/R$id;->clear_search_icon:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 523
    .local v11, "clearSearchView":Landroid/widget/ImageView;
    new-instance v5, Lcom/biznessapps/home_screen/HomeScreenActivity$9;

    move-object v6, p0

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/biznessapps/home_screen/HomeScreenActivity$9;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/widget/EditText;Landroid/view/View;IZ)V

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 535
    return-void

    .end local v3    # "menuSize":I
    .end local v4    # "isListLayout":Z
    .end local v7    # "searchEditText":Landroid/widget/EditText;
    .end local v11    # "clearSearchView":Landroid/widget/ImageView;
    .end local v12    # "homeMenuRoot":Landroid/widget/FrameLayout;
    .end local v13    # "widthKoef":F
    :cond_0
    move v4, v0

    .line 481
    goto :goto_0

    .line 482
    .restart local v4    # "isListLayout":Z
    :cond_1
    const v13, 0x3f333333    # 0.7f

    goto :goto_1
.end method

.method private initTabStartupAnimation()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabFragmentsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I

    .line 754
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->currentTabIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 757
    new-instance v0, Lcom/biznessapps/home_screen/HomeScreenActivity$11;

    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity$11;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabEventHandler:Landroid/os/Handler;

    .line 776
    const/16 v0, 0xbb8

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->sendChangeTabMessage(ILandroid/os/Handler;I)V

    .line 777
    return-void
.end method

.method private loadNewsIfUsed()V
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->showNewsFeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    new-instance v0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Lcom/biznessapps/home_screen/HomeScreenActivity$1;)V

    .line 540
    .local v0, "searchAsyncTask":Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 542
    .end local v0    # "searchAsyncTask":Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;
    :cond_0
    return-void
.end method

.method private sendMessageToHandler(II)V
    .locals 4
    .param p1, "newMessageId"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 649
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsFeedHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 650
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsFeedHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 651
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newsFeedHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 652
    return-void
.end method

.method private setHeaderBackground()V
    .locals 15

    .prologue
    const/high16 v14, 0x439f0000    # 318.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 780
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v13}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderSrc()Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "headerSrc":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 782
    new-instance v12, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    invoke-direct {v12}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;-><init>()V

    .line 783
    .local v12, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v13}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderTint()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintColor(I)V

    .line 784
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v13}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderTintOpacity()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintOpacity(F)V

    .line 786
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v6

    .line 787
    .local v6, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    new-instance v8, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 788
    .local v8, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 790
    invoke-virtual {v8, v12}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 791
    invoke-virtual {v8, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 792
    const/4 v13, 0x3

    invoke-virtual {v8, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 794
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v13}, Lcom/biznessapps/common/entities/AppSettings;->isNormalHeader()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/biznessapps/layout/R$dimen;->footer_bar_height:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 796
    .local v5, "height":I
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 797
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 798
    const/4 v13, -0x1

    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 799
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 801
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 821
    .end local v5    # "height":I
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {v6, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 825
    .end local v6    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v12    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :goto_1
    return-void

    .line 803
    .restart local v6    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .restart local v12    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_0
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v13}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderHeight()F

    move-result v2

    .line 804
    .local v2, "headerHeight":F
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v13}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderWidth()F

    move-result v4

    .line 805
    .local v4, "headerWidth":F
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v0

    .line 806
    .local v0, "deviceWidth":I
    div-float v13, v4, v14

    cmpg-float v13, v13, v9

    if-gtz v13, :cond_1

    div-float v9, v4, v14

    .line 807
    .local v9, "proportionCoef":F
    :cond_1
    int-to-float v13, v0

    mul-float/2addr v13, v9

    float-to-int v11, v13

    .line 808
    .local v11, "realHeaderWidth":I
    int-to-float v13, v11

    div-float/2addr v13, v4

    mul-float/2addr v13, v2

    float-to-int v10, v13

    .line 809
    .local v10, "realHeaderHeight":I
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 810
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 811
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 812
    const/4 v1, 0x1

    .line 813
    .local v1, "gravity":I
    const-string v13, "left"

    iget-object v14, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderAlignment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 814
    const/4 v1, 0x3

    .line 818
    :cond_2
    :goto_2
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 819
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 815
    :cond_3
    const-string v13, "right"

    iget-object v14, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v14}, Lcom/biznessapps/common/entities/AppSettings;->getHeaderAlignment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 816
    const/4 v1, 0x5

    goto :goto_2

    .line 823
    .end local v0    # "deviceWidth":I
    .end local v1    # "gravity":I
    .end local v2    # "headerHeight":F
    .end local v4    # "headerWidth":F
    .end local v6    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v7    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v9    # "proportionCoef":F
    .end local v10    # "realHeaderHeight":I
    .end local v11    # "realHeaderWidth":I
    .end local v12    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_4
    iget-object v13, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setRootBackground()V
    .locals 5

    .prologue
    .line 828
    sget v3, Lcom/biznessapps/layout/R$id;->home_screen_root:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 829
    .local v0, "homeScreenRoot":Landroid/view/ViewGroup;
    new-instance v1, Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1}, Lcom/biznessapps/api/UiSettings;-><init>()V

    .line 830
    .local v1, "homeUiSettings":Lcom/biznessapps/api/UiSettings;
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->useBlurEffectForHome()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/api/UiSettings;->setUseBlurEffect(Z)V

    .line 831
    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 833
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppInfoEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 834
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v2

    .line 835
    .local v2, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppInfoEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/biznessapps/images/NewImageManager;->addWidthParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;

    .line 837
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->homeBgUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 839
    .end local v2    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    return-void
.end method

.method private startAnimationIfNeeded()V
    .locals 6

    .prologue
    .line 359
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppInfoEntity;->getImagesInOrder()Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "imagesUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppInfoEntity;->hasManyImages()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->isModernSlidingUsed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getAnimationMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    new-instance v2, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v2, p0, v3}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;-><init>(Landroid/app/Activity;Lcom/biznessapps/common/entities/AppSettings;)V

    iput-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->modernAnimationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    .line 365
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->modernAnimationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->getAnimationMode()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppInfoEntity;->getImagesInOrder()Ljava/util/List;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->home_screen_container:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->init(ILjava/util/List;Landroid/view/View;)V

    .line 366
    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->modernAnimationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    invoke-virtual {v2}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->startAnimation()V

    .line 373
    .end local v0    # "imagesUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 368
    .restart local v0    # "imagesUrl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget v2, Lcom/biznessapps/layout/R$id;->viewpager:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/fragments/CustomizableViewPager;

    .line 369
    .local v1, "viewPager":Lcom/biznessapps/common/fragments/CustomizableViewPager;
    new-instance v2, Lcom/biznessapps/home_screen/HomeAnimation;

    invoke-direct {v2, p0, v1, v0}, Lcom/biznessapps/home_screen/HomeAnimation;-><init>(Landroid/app/Activity;Lcom/biznessapps/widgets/ExtendedViewPager;Ljava/util/List;)V

    iput-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->homeAnimationComponent:Lcom/biznessapps/home_screen/HomeAnimation;

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->layoutId:I

    goto :goto_0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->initViews()V

    .line 206
    sget v1, Lcom/biznessapps/layout/R$id;->home_screen_container:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    .line 207
    sget v1, Lcom/biznessapps/layout/R$id;->home_screen_header:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->headerView:Landroid/widget/ImageView;

    .line 208
    sget v1, Lcom/biznessapps/layout/R$id;->tab_viewpager:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/fragments/CustomizableViewPager;

    iput-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    .line 209
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/biznessapps/home_screen/HomeScreenActivity$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/home_screen/HomeScreenActivity$2;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 234
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabFragmentsList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->setRootBackground()V

    .line 243
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->setHeaderBackground()V

    .line 244
    iget-boolean v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useModernLayout:Z

    if-nez v1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->defineNavigation()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->defineShortLinks()V

    .line 249
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p0, v1, v2}, Lcom/biznessapps/home_screen/HomeScreenHelper;->initOptionsViews(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 250
    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 251
    return-void

    .line 237
    :cond_1
    new-instance v0, Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabFragmentsList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;-><init>(Lcom/biznessapps/common/activities/CommonTabFragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 238
    .local v0, "tabAdapter":Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 239
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 240
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->initTabStartupAnimation()V

    goto :goto_0
.end method

.method protected loadTabFragments()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-boolean v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useModernLayout:Z

    if-nez v7, :cond_0

    .line 309
    iget-boolean v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->hasMoreButtonNavigation:Z

    if-eqz v7, :cond_1

    .line 312
    new-instance v4, Lcom/biznessapps/home_screen/HomePartFragment;

    invoke-direct {v4}, Lcom/biznessapps/home_screen/HomePartFragment;-><init>()V

    .line 313
    .local v4, "hp":Lcom/biznessapps/home_screen/HomePartFragment;
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setTabs(Ljava/util/List;)V

    .line 314
    iget v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setRowCount(I)V

    .line 315
    iget v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setColumnCount(I)V

    .line 316
    iget-boolean v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->hasMoreButtonNavigation:Z

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setHasMoreButtonNavigation(Z)V

    .line 317
    invoke-virtual {v4, v12}, Lcom/biznessapps/home_screen/HomePartFragment;->setRetainInstance(Z)V

    .line 318
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v4    # "hp":Lcom/biznessapps/home_screen/HomePartFragment;
    :cond_0
    return-object v1

    .line 322
    :cond_1
    const/4 v2, 0x0

    .line 323
    .local v2, "fragmentsNumber":I
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 324
    .local v6, "tabCount":I
    :goto_0
    if-lez v6, :cond_2

    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 326
    iget v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    iget v8, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    goto :goto_0

    .line 328
    :cond_2
    if-lez v2, :cond_3

    .line 329
    sget v7, Lcom/biznessapps/layout/R$id;->tabs_navigation_container:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    .line 330
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 331
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 333
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 334
    new-instance v4, Lcom/biznessapps/home_screen/HomePartFragment;

    invoke-direct {v4}, Lcom/biznessapps/home_screen/HomePartFragment;-><init>()V

    .line 335
    .restart local v4    # "hp":Lcom/biznessapps/home_screen/HomePartFragment;
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    iget v9, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    mul-int/2addr v8, v9

    mul-int v3, v7, v8

    .line 336
    .local v3, "highLimit":I
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v3, v7, :cond_4

    .line 337
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 339
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    iget v9, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    iget v10, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    mul-int/2addr v9, v10

    mul-int/2addr v9, v5

    invoke-interface {v8, v9, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setTabs(Ljava/util/List;)V

    .line 340
    iget v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rowCount:I

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setRowCount(I)V

    .line 341
    iget v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->columnCount:I

    invoke-virtual {v4, v7}, Lcom/biznessapps/home_screen/HomePartFragment;->setColumnCount(I)V

    .line 342
    invoke-virtual {v4, v12}, Lcom/biznessapps/home_screen/HomePartFragment;->setRetainInstance(Z)V

    .line 343
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$layout;->circle_image:I

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 345
    .local v0, "circleImage":Landroid/widget/ImageView;
    invoke-virtual {v0, v13, v11, v13, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 346
    if-nez v5, :cond_5

    .line 347
    sget v7, Lcom/biznessapps/layout/R$drawable;->selected_circle:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    :goto_2
    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabCircles:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 349
    :cond_5
    sget v7, Lcom/biznessapps/layout/R$drawable;->unselected_circle:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 278
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->useStreamMode()Z

    move-result v0

    .line 281
    .local v0, "useStreamMode":Z
    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-boolean v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->exitToReseller:Z

    if-eqz v1, :cond_1

    .line 285
    sget v1, Lcom/biznessapps/layout/R$string;->reseller_return_message:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/home_screen/HomeScreenActivity$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/home_screen/HomeScreenActivity$3;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    invoke-static {p0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 296
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->clear()V

    .line 298
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/UrlWrapper;->getInstance()Lcom/biznessapps/api/UrlWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/UrlWrapper;->clearState()V

    .line 299
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 152
    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "IS_FROM_RESELLER"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->exitToReseller:Z

    .line 154
    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "post_dev_token_response"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "postDevTokenResponse":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->useStreamMode()Z

    move-result v3

    .line 158
    .local v3, "useStreamMode":Z
    if-nez v3, :cond_0

    .line 159
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->showMailingListPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V

    .line 160
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->showOfflineCachingPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V

    .line 164
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/biznessapps/utils/ViewUtils;->showEmailCollectPropmtIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V

    .line 165
    if-nez v3, :cond_1

    .line 169
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 170
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->isSocialOnBoard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    new-instance v2, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v2, p0, v4}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;-><init>(Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/api/UiSettings;)V

    .line 172
    .local v2, "socialOnBoardingDialog":Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;
    invoke-virtual {v2}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->show()V

    .line 176
    .end local v0    # "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v2    # "socialOnBoardingDialog":Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;
    :cond_1
    invoke-static {p0}, Lcom/biznessapps/loyalty/LoyaltyHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/loyalty/LoyaltyHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/biznessapps/loyalty/LoyaltyHandler;->handleLoyalityAwarded(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    invoke-virtual {v4, v5}, Lcom/biznessapps/localization/StringsSource;->addListener(Lcom/biznessapps/localization/StringsSource$LocalizationListener;)V

    .line 179
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->startAnimationIfNeeded()V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->modernAnimationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->modernAnimationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    invoke-virtual {v1}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->stopAnimation()V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->homeAnimationComponent:Lcom/biznessapps/home_screen/HomeAnimation;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->homeAnimationComponent:Lcom/biznessapps/home_screen/HomeAnimation;

    invoke-virtual {v1}, Lcom/biznessapps/home_screen/HomeAnimation;->stop()V

    .line 261
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$id;->home_menu_root:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    .local v0, "homeMenuView":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    invoke-virtual {v1, v2}, Lcom/biznessapps/localization/StringsSource;->removeListener(Lcom/biznessapps/localization/StringsSource$LocalizationListener;)V

    .line 266
    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_3
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onDestroy()V

    .line 274
    return-void
.end method

.method protected onPreInit()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onPreInit()V

    .line 185
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v3, "APP_INFO_PROPERTY"

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/AppInfoEntity;

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    .line 186
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 187
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->hasMoreButtonNavigation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->hasMoreButtonNavigation:Z

    .line 188
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useModernLayout:Z

    .line 189
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->getTabsItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->tabs:Ljava/util/List;

    .line 190
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    .line 191
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->defineRowLayout()V

    .line 192
    iget-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivity;->useNewHomeTabMode:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->initHomeMenu()V

    .line 195
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 188
    goto :goto_0

    :cond_2
    move v1, v2

    .line 190
    goto :goto_1
.end method

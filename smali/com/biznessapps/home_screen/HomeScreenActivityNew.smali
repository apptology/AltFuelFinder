.class public Lcom/biznessapps/home_screen/HomeScreenActivityNew;
.super Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;
.source "HomeScreenActivityNew.java"


# instance fields
.field private animationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

.field private appSettings:Lcom/biznessapps/common/entities/AppSettings;

.field private backgroundComponent:Lcom/biznessapps/home_screen/components/BackgroundComponent;

.field private columnCount:I

.field private hasMoreButtonNavigation:Z

.field private headerView:Landroid/widget/ImageView;

.field private layoutId:I

.field private menuView:Landroid/widget/LinearLayout;

.field private newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

.field private rootView:Landroid/view/ViewGroup;

.field private rowCount:I

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;-><init>()V

    return-void
.end method

.method private defineRowLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x5

    .line 127
    iget-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->hasMoreButtonNavigation:Z

    if-eqz v0, :cond_2

    .line 128
    iput v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    .line 129
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getCols()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    .line 130
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    if-le v0, v1, :cond_1

    .line 131
    :cond_0
    iput v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    .line 133
    :cond_1
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_1row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->layoutId:I

    .line 161
    :goto_0
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getRows()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    .line 136
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getCols()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    .line 138
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 139
    iput v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    .line 143
    :cond_3
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    if-le v0, v4, :cond_5

    .line 144
    :cond_4
    iput v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    .line 146
    :cond_5
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    if-le v0, v1, :cond_7

    .line 147
    :cond_6
    iput v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->columnCount:I

    .line 150
    :cond_7
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 151
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_2row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->layoutId:I

    goto :goto_0

    .line 152
    :cond_8
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    if-ne v0, v3, :cond_9

    .line 153
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_3row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->layoutId:I

    goto :goto_0

    .line 154
    :cond_9
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rowCount:I

    if-ne v0, v4, :cond_a

    .line 155
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_4row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->layoutId:I

    goto :goto_0

    .line 158
    :cond_a
    sget v0, Lcom/biznessapps/layout/R$layout;->home_screen_layout_1row:I

    iput v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->layoutId:I

    goto :goto_0
.end method

.method private initComponents()V
    .locals 5

    .prologue
    .line 120
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppInfoEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "homeBgUrl":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/biznessapps/home_screen/components/BackgroundComponent;

    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/biznessapps/home_screen/components/BackgroundComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Lcom/biznessapps/common/entities/AppSettings;)V

    iput-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->backgroundComponent:Lcom/biznessapps/home_screen/components/BackgroundComponent;

    .line 122
    new-instance v1, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;-><init>(Landroid/app/Activity;Lcom/biznessapps/common/entities/AppSettings;)V

    iput-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->animationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    .line 123
    return-void

    .line 120
    .end local v0    # "homeBgUrl":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->layoutId:I

    return v0
.end method

.method protected initViews()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->initViews()V

    .line 96
    sget v0, Lcom/biznessapps/layout/R$id;->home_screen_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rootView:Landroid/view/ViewGroup;

    .line 97
    sget v0, Lcom/biznessapps/layout/R$id;->home_screen_header:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->headerView:Landroid/widget/ImageView;

    .line 98
    sget v0, Lcom/biznessapps/layout/R$id;->left_content:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->menuView:Landroid/widget/LinearLayout;

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 63
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->isSocialOnBoard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v1, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;-><init>(Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/api/UiSettings;)V

    .line 65
    .local v1, "socialOnBoardingDialog":Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;
    invoke-virtual {v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->show()V

    .line 67
    .end local v1    # "socialOnBoardingDialog":Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onDestroy()V

    .line 87
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/biznessapps/player/MusicPlayer;->getInstance()Lcom/biznessapps/player/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/MusicPlayer;->getServiceAccessor()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->animationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    invoke-virtual {v0}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->stopAnimation()V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->backgroundComponent:Lcom/biznessapps/home_screen/components/BackgroundComponent;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->headerView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->menuView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/home_screen/components/BackgroundComponent;->clearBackgrounds(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    .line 81
    return-void
.end method

.method protected onPreInit()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onPreInit()V

    .line 109
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "APP_INFO_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/AppInfoEntity;

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->newDesignApp:Lcom/biznessapps/common/entities/AppInfoEntity;

    .line 110
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 111
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->hasMoreButtonNavigation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->hasMoreButtonNavigation:Z

    .line 112
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->useModernLayout:Z

    .line 113
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->getTabsItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->tabs:Ljava/util/List;

    .line 114
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->defineRowLayout()V

    .line 116
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->initComponents()V

    .line 117
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonShareableTabFragmentActivity;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->animationComponent:Lcom/biznessapps/home_screen/components/ModernAnimationComponent;

    invoke-virtual {v0}, Lcom/biznessapps/home_screen/components/ModernAnimationComponent;->startAnimation()V

    .line 73
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->backgroundComponent:Lcom/biznessapps/home_screen/components/BackgroundComponent;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/home_screen/HomeScreenActivityNew;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/home_screen/components/BackgroundComponent;->setBackgrounds(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    .line 74
    return-void
.end method

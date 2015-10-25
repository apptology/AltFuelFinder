.class public Lcom/biznessapps/api/navigation/NavigationBar;
.super Ljava/lang/Object;
.source "NavigationBar.java"


# static fields
.field public static final HORISONTAL_ORIENTATION:I = 0x1

.field public static final VERTICAL_ORIENTATION:I = 0x2

.field private static currentTabId:J


# instance fields
.field private final context:Landroid/content/Context;

.field private isSelectionSet:Z

.field private orientation:I

.field private tabCount:I

.field private tabRootLayout:Landroid/view/ViewGroup;

.field private final tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabView;",
            ">;"
        }
    .end annotation
.end field

.field private tabsContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/biznessapps/api/navigation/NavigationBar;->currentTabId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->orientation:I

    .line 49
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    .line 50
    iput p2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->orientation:I

    .line 51
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/NavigationBar;->initTabContainerLayout()V

    .line 52
    return-void
.end method

.method private initTabContainerLayout()V
    .locals 3

    .prologue
    .line 173
    iget v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v0, Lcom/biznessapps/layout/R$layout;->navigation_bar:I

    .line 174
    .local v0, "layoutId":I
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabRootLayout:Landroid/view/ViewGroup;

    .line 175
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabRootLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->navigation_tab_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    .line 176
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 177
    return-void

    .line 173
    .end local v0    # "layoutId":I
    :cond_0
    sget v0, Lcom/biznessapps/layout/R$layout;->navigation_bar_vertical:I

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcom/biznessapps/api/navigation/TabView;I)V
    .locals 10
    .param p1, "tab"    # Lcom/biznessapps/api/navigation/TabView;
    .param p2, "countPerPage"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 69
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->withOldDesign()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v6, "sidesLp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "leftSide":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v5, "rightSide":Landroid/widget/LinearLayout;
    sget v7, Lcom/biznessapps/layout/R$drawable;->side_line_background:I

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 78
    sget v7, Lcom/biznessapps/layout/R$drawable;->side_line_background:I

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 80
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .end local v1    # "leftSide":Landroid/widget/LinearLayout;
    .end local v5    # "rightSide":Landroid/widget/LinearLayout;
    .end local v6    # "sidesLp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->orientation:I

    if-ne v7, v9, :cond_1

    .line 85
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$dimen;->vertical_navigation_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 88
    .local v3, "navigationMargin":F
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 89
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$dimen;->news_feed_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 90
    .local v4, "newsFeedsMargin":F
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->showNewsFeed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    add-float/2addr v3, v4

    .line 93
    :cond_2
    iget v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabCount:I

    if-ge v7, p2, :cond_3

    .line 94
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getDeviceHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v7, v7

    iget v8, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabCount:I

    div-int/2addr v7, v8

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 98
    :goto_1
    iget-object v7, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getDeviceHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v7, v7

    div-int/2addr v7, p2

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1
.end method

.method public clearTabs()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/navigation/TabView;

    .line 121
    .local v1, "tab":Lcom/biznessapps/api/navigation/TabView;
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 123
    .end local v1    # "tab":Lcom/biznessapps/api/navigation/TabView;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 124
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 125
    return-void
.end method

.method public getCurrentTab()J
    .locals 2

    .prologue
    .line 166
    sget-wide v0, Lcom/biznessapps/api/navigation/NavigationBar;->currentTabId:J

    return-wide v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public openFirstTab()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/navigation/TabView;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performClick()Z

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_0
    return v0
.end method

.method public resetTabsSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/navigation/TabView;

    .line 138
    .local v1, "tab":Lcom/biznessapps/api/navigation/TabView;
    invoke-virtual {v1, v3}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    goto :goto_0

    .line 140
    .end local v1    # "tab":Lcom/biznessapps/api/navigation/TabView;
    :cond_0
    iput-boolean v3, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 141
    return-void
.end method

.method public setActiveTab(J)V
    .locals 5
    .param p1, "tabId"    # J

    .prologue
    const/4 v4, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/biznessapps/api/navigation/NavigationBar;->resetTabsSelection()V

    .line 145
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/navigation/TabView;

    .line 146
    .local v1, "tab":Lcom/biznessapps/api/navigation/TabView;
    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/api/navigation/TabView;->shouldBeSelectedForView(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v1, v4}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    .line 148
    iput-boolean v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 150
    sput-wide p1, Lcom/biznessapps/api/navigation/NavigationBar;->currentTabId:J

    .line 155
    .end local v1    # "tab":Lcom/biznessapps/api/navigation/TabView;
    :cond_1
    iget-boolean v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    if-nez v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/api/navigation/TabView;

    invoke-virtual {v2, v4}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    .line 160
    iput-boolean v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 163
    :cond_2
    return-void
.end method

.method public setTabCount(I)V
    .locals 0
    .param p1, "tabCount"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabCount:I

    .line 61
    return-void
.end method

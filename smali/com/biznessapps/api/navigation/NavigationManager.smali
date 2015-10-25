.class public Lcom/biznessapps/api/navigation/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# static fields
.field public static final DEFAULT_COLUMNS_COUNT:I = 0x5

.field public static final DEFAULT_ROWS_COUNT:I = 0x1

.field public static final DEFAULT_TAB_LIMIT:I = 0x5

.field public static final ROWS_LIMIT:I = 0x4

.field private static final SIDE_TAB_LIMIT:I = 0x6

.field private static tabsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

.field private rowTabsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private tabLimit:I

.field private useUnlimitTabCount:Z

.field private withOldDesign:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    .line 101
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    .line 102
    invoke-direct {p0, v1}, Lcom/biznessapps/api/navigation/NavigationManager;->initNavigationBar(I)V

    .line 103
    iput-boolean v1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->withOldDesign:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orientation"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    .line 107
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    .line 108
    invoke-direct {p0, p2}, Lcom/biznessapps/api/navigation/NavigationManager;->initNavigationBar(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "withOldDesign"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    .line 112
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/api/navigation/NavigationManager;->initNavigationBar(I)V

    .line 114
    iput-boolean p2, p0, Lcom/biznessapps/api/navigation/NavigationManager;->withOldDesign:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/navigation/NavigationManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/navigation/NavigationManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->onViewChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private addNewTab(Lcom/biznessapps/more/Tab;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "tab"    # Lcom/biznessapps/more/Tab;
    .param p2, "tabName"    # Ljava/lang/String;
    .param p3, "isMoreTab"    # Z

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p1, p2}, Lcom/biznessapps/more/Tab;->setLabel(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v3, v3}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 205
    .local v6, "comingIntent":Landroid/content/Intent;
    new-instance v5, Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-direct {v5}, Lcom/biznessapps/api/navigation/TabViewSettings;-><init>()V

    .line 207
    .local v5, "tabSettings":Lcom/biznessapps/api/navigation/TabViewSettings;
    const/4 v2, 0x0

    .line 209
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v7

    .line 210
    .local v7, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    :goto_0
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->isShowText()Z

    move-result v1

    :goto_1
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setShowText(Z)V

    .line 217
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabTint()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabTint(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabTintOpacity()F

    move-result v1

    :goto_3
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabTintOpacity(F)V

    .line 219
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabText()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabTextColor(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabSrc()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabBgUrl(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v5, p2}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabId(J)V

    .line 224
    new-instance v0, Lcom/biznessapps/api/navigation/TabView;

    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/biznessapps/api/navigation/NavigationManager$1;

    invoke-direct {v3, p0, v6}, Lcom/biznessapps/api/navigation/NavigationManager$1;-><init>(Lcom/biznessapps/api/navigation/NavigationManager;Landroid/content/Intent;)V

    iget-boolean v4, p0, Lcom/biznessapps/api/navigation/NavigationManager;->withOldDesign:Z

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/api/navigation/TabView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;ZLcom/biznessapps/api/navigation/TabViewSettings;)V

    .line 235
    .local v0, "newTab":Lcom/biznessapps/api/navigation/TabView;
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    iget v3, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    invoke-virtual {v1, v0, v3}, Lcom/biznessapps/api/navigation/NavigationBar;->addTab(Lcom/biznessapps/api/navigation/TabView;I)V

    .line 239
    return-void

    .line 213
    .end local v0    # "newTab":Lcom/biznessapps/api/navigation/TabView;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/biznessapps/common/entities/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 216
    :cond_2
    invoke-virtual {v7}, Lcom/biznessapps/common/entities/AppSettings;->isShowText()Z

    move-result v1

    goto/16 :goto_1

    .line 217
    :cond_3
    invoke-virtual {v7}, Lcom/biznessapps/common/entities/AppSettings;->getTabTint()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 218
    :cond_4
    invoke-virtual {v7}, Lcom/biznessapps/common/entities/AppSettings;->getTabTintOpacity()F

    move-result v1

    goto/16 :goto_3

    .line 219
    :cond_5
    invoke-virtual {v7}, Lcom/biznessapps/common/entities/AppSettings;->getTabText()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 220
    :cond_6
    invoke-virtual {v7}, Lcom/biznessapps/common/entities/AppSettings;->getTabSrc()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :cond_0
    return-void
.end method

.method public static getTabsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    return-object v0
.end method

.method private goToNewView(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method private initNavigationBar(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 118
    new-instance v0, Lcom/biznessapps/api/navigation/NavigationBar;

    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/biznessapps/api/navigation/NavigationBar;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    .line 119
    return-void
.end method

.method private onViewChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->resetTabsSelection()V

    .line 186
    invoke-direct {p0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->goToNewView(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public static setTabsItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "tabsItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    sput-object p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabsItems:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public addLayoutTo(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method public clearTabs()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->clearTabs()V

    .line 123
    return-void
.end method

.method public getCurrentTabSelection()J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->getCurrentTab()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowTabsItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    return-object v0
.end method

.method public openFirstTab()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->openFirstTab()Z

    move-result v0

    return v0
.end method

.method public resetTabsSelection()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationBar;->resetTabsSelection()V

    .line 180
    return-void
.end method

.method public setRowTabsItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "rowTabsItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabCount(I)V

    .line 98
    return-void
.end method

.method public setSideTabLimit()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    iput v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    .line 55
    return-void
.end method

.method public setTabCount(I)V
    .locals 1
    .param p1, "tabCount"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0, p1}, Lcom/biznessapps/api/navigation/NavigationBar;->setTabCount(I)V

    .line 81
    return-void
.end method

.method public setTabSelection(J)V
    .locals 1
    .param p1, "tabId"    # J

    .prologue
    .line 155
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->navigationBar:Lcom/biznessapps/api/navigation/NavigationBar;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/api/navigation/NavigationBar;->setActiveTab(J)V

    .line 156
    return-void
.end method

.method public setTabsLimit(I)V
    .locals 0
    .param p1, "tabLimit"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    .line 59
    return-void
.end method

.method public setUseUnlimitTabCount(Z)V
    .locals 0
    .param p1, "useUnlimitTabCount"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/biznessapps/api/navigation/NavigationManager;->useUnlimitTabCount:Z

    .line 89
    return-void
.end method

.method public updateTabs()V
    .locals 7

    .prologue
    .line 126
    iget-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    .line 129
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/entities/AppSettings;->getMoreTab()Lcom/biznessapps/more/Tab;

    move-result-object v1

    .line 130
    .local v1, "moreTab":Lcom/biznessapps/more/Tab;
    const/4 v4, 0x1

    .line 131
    .local v4, "tabCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v3, "tabButtons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    iget-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/more/Tab;

    .line 133
    .local v2, "tab":Lcom/biznessapps/more/Tab;
    iget v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    if-lt v4, v5, :cond_1

    iget-object v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->rowTabsItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/biznessapps/api/navigation/NavigationManager;->tabLimit:I

    if-eq v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/biznessapps/api/navigation/NavigationManager;->useUnlimitTabCount:Z

    if-eqz v5, :cond_2

    .line 135
    :cond_1
    invoke-virtual {v2}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v2, v5, v6}, Lcom/biznessapps/api/navigation/NavigationManager;->addNewTab(Lcom/biznessapps/more/Tab;Ljava/lang/String;Z)V

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_2
    new-instance v5, Lcom/biznessapps/api/navigation/TabButton;

    invoke-direct {v5, v2}, Lcom/biznessapps/api/navigation/TabButton;-><init>(Lcom/biznessapps/more/Tab;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v2    # "tab":Lcom/biznessapps/more/Tab;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 143
    invoke-static {}, Lcom/biznessapps/more/TabManager;->getInstance()Lcom/biznessapps/more/TabManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/biznessapps/more/TabManager;->setMoreTabsList(Ljava/util/List;)V

    .line 145
    invoke-virtual {v1}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Lcom/biznessapps/api/navigation/NavigationManager;->addNewTab(Lcom/biznessapps/more/Tab;Ljava/lang/String;Z)V

    .line 147
    :cond_4
    return-void
.end method

.method public useUnlimitTabCount()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/biznessapps/api/navigation/NavigationManager;->useUnlimitTabCount:Z

    return v0
.end method

.class public Lcom/biznessapps/home_screen/HomePartFragment;
.super Landroid/support/v4/app/Fragment;
.source "HomePartFragment.java"


# instance fields
.field private columnCount:I

.field private hasMoreButtonNavigation:Z

.field private root:Landroid/view/ViewGroup;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;Ljava/util/List;I)V
    .locals 3
    .param p1, "row"    # Landroid/view/ViewGroup;
    .param p3, "columnCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "rowsTab":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    new-instance v0, Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-virtual {p0}, Lcom/biznessapps/home_screen/HomePartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/api/navigation/NavigationManager;-><init>(Landroid/app/Activity;Z)V

    .line 96
    .local v0, "navigManagerRow":Lcom/biznessapps/api/navigation/NavigationManager;
    invoke-virtual {v0, p2}, Lcom/biznessapps/api/navigation/NavigationManager;->setRowTabsItems(Ljava/util/List;)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->addLayoutTo(Landroid/view/ViewGroup;)V

    .line 98
    invoke-virtual {v0, p3}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabsLimit(I)V

    .line 99
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->updateTabs()V

    .line 100
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->resetTabsSelection()V

    .line 101
    return-void
.end method

.method private initTabs()V
    .locals 14

    .prologue
    .line 53
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v9, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/widget/FrameLayout;>;"
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row1:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 55
    .local v5, "row1Tabs":Landroid/widget/FrameLayout;
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row2:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 56
    .local v6, "row2Tabs":Landroid/widget/FrameLayout;
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row3:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 57
    .local v7, "row3Tabs":Landroid/widget/FrameLayout;
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row4:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 59
    .local v8, "row4Tabs":Landroid/widget/FrameLayout;
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_0

    .line 66
    iget v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->rowCount:I

    if-lt v1, v12, :cond_3

    .line 72
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->rowCount:I

    if-ge v1, v12, :cond_6

    .line 73
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iget v13, p0, Lcom/biznessapps/home_screen/HomePartFragment;->columnCount:I

    mul-int/2addr v13, v1

    if-le v12, v13, :cond_5

    .line 74
    add-int/lit8 v12, v1, 0x1

    iget v13, p0, Lcom/biznessapps/home_screen/HomePartFragment;->columnCount:I

    mul-int v0, v12, v13

    .line 75
    .local v0, "highLimit":I
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int v3, v0, v12

    .line 76
    .local v3, "missedTabs":I
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v0, v12, :cond_1

    .line 77
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    :cond_1
    iget-boolean v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->hasMoreButtonNavigation:Z

    if-eqz v12, :cond_2

    iget v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->rowCount:I

    add-int/lit8 v12, v12, -0x1

    if-ne v1, v12, :cond_2

    .line 80
    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    iget v13, p0, Lcom/biznessapps/home_screen/HomePartFragment;->columnCount:I

    mul-int/2addr v13, v1

    invoke-interface {v12, v13, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .local v10, "subList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 85
    new-instance v11, Lcom/biznessapps/more/Tab;

    invoke-direct {v11}, Lcom/biznessapps/more/Tab;-><init>()V

    .line 86
    .local v11, "tab":Lcom/biznessapps/more/Tab;
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 69
    .end local v0    # "highLimit":I
    .end local v2    # "j":I
    .end local v3    # "missedTabs":I
    .end local v10    # "subList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    .end local v11    # "tab":Lcom/biznessapps/more/Tab;
    :cond_3
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .restart local v0    # "highLimit":I
    .restart local v2    # "j":I
    .restart local v3    # "missedTabs":I
    .restart local v10    # "subList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_4
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 89
    .local v4, "row":Landroid/widget/FrameLayout;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v13, p0, Lcom/biznessapps/home_screen/HomePartFragment;->columnCount:I

    invoke-direct {p0, v4, v12, v13}, Lcom/biznessapps/home_screen/HomePartFragment;->addRow(Landroid/view/ViewGroup;Ljava/util/List;I)V

    .line 72
    .end local v0    # "highLimit":I
    .end local v2    # "j":I
    .end local v3    # "missedTabs":I
    .end local v4    # "row":Landroid/widget/FrameLayout;
    .end local v10    # "subList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :cond_6
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    sget v0, Lcom/biznessapps/layout/R$layout;->home_part_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomePartFragment;->root:Landroid/view/ViewGroup;

    .line 48
    invoke-direct {p0}, Lcom/biznessapps/home_screen/HomePartFragment;->initTabs()V

    .line 49
    iget-object v0, p0, Lcom/biznessapps/home_screen/HomePartFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/biznessapps/home_screen/HomePartFragment;->columnCount:I

    .line 37
    return-void
.end method

.method public setHasMoreButtonNavigation(Z)V
    .locals 0
    .param p1, "hasMoreButtonNavigation"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/biznessapps/home_screen/HomePartFragment;->hasMoreButtonNavigation:Z

    .line 41
    return-void
.end method

.method public setRowCount(I)V
    .locals 0
    .param p1, "rowCount"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/biznessapps/home_screen/HomePartFragment;->rowCount:I

    .line 33
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
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
    .line 28
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomePartFragment;->tabs:Ljava/util/List;

    .line 29
    return-void
.end method

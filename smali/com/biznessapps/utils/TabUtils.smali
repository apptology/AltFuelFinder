.class public Lcom/biznessapps/utils/TabUtils;
.super Ljava/lang/Object;
.source "TabUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTabViews(Ljava/util/List;ILandroid/app/Activity;)Ljava/util/List;
    .locals 13
    .param p1, "tabSize"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;I",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v12, "tabViews":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabView;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/biznessapps/more/Tab;

    .line 52
    .local v11, "tab":Lcom/biznessapps/more/Tab;
    new-instance v5, Lcom/biznessapps/api/navigation/TabViewSettings;

    invoke-direct {v5}, Lcom/biznessapps/api/navigation/TabViewSettings;-><init>()V

    .line 54
    .local v5, "tabSettings":Lcom/biznessapps/api/navigation/TabViewSettings;
    const/4 v2, 0x0

    .line 55
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v9

    .line 56
    .local v9, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getTabIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :goto_1
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->isShowText()Z

    move-result v10

    .line 62
    .local v10, "showText":Z
    :goto_2
    invoke-virtual {v5, v10}, Lcom/biznessapps/api/navigation/TabViewSettings;->setShowText(Z)V

    .line 64
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getTabTint()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabTint(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getTabTintOpacity()F

    move-result v1

    :goto_4
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabTintOpacity(F)V

    .line 66
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getTabText()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabTextColor(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getTabSrc()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabBgUrl(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/biznessapps/api/navigation/TabViewSettings;->setTabId(J)V

    .line 71
    new-instance v0, Lcom/biznessapps/api/navigation/TabView;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/biznessapps/utils/TabUtils$1;

    invoke-direct {v3, p2, v11}, Lcom/biznessapps/utils/TabUtils$1;-><init>(Landroid/app/Activity;Lcom/biznessapps/more/Tab;)V

    const/4 v4, 0x0

    sget v6, Lcom/biznessapps/layout/R$layout;->home_tab:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/api/navigation/TabView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;ZLcom/biznessapps/api/navigation/TabViewSettings;II)V

    .line 79
    .local v0, "newTab":Lcom/biznessapps/api/navigation/TabView;
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    .end local v0    # "newTab":Lcom/biznessapps/api/navigation/TabView;
    .end local v10    # "showText":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->isShowText()Z

    move-result v10

    goto :goto_2

    .line 64
    .restart local v10    # "showText":Z
    :cond_2
    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getTabTint()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getTabTintOpacity()F

    move-result v1

    goto :goto_4

    .line 66
    :cond_4
    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getTabText()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 67
    :cond_5
    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getTabSrc()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 81
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v5    # "tabSettings":Lcom/biznessapps/api/navigation/TabViewSettings;
    .end local v9    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v10    # "showText":Z
    .end local v11    # "tab":Lcom/biznessapps/more/Tab;
    :cond_6
    return-object v12
.end method

.method public static openLinkedTab(ILandroid/app/Activity;)V
    .locals 11
    .param p0, "tabIndex"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 28
    .local v0, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getAppInfo()Lcom/biznessapps/common/entities/AppInfoEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/common/entities/AppInfoEntity;->getImagesLinkedTabs()Ljava/util/List;

    move-result-object v5

    .line 29
    .local v5, "linkedTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    if-eqz v5, :cond_2

    if-ltz p0, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge p0, v8, :cond_2

    .line 30
    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/more/Tab;

    .line 31
    .local v4, "linkedTab":Lcom/biznessapps/more/Tab;
    if-eqz v4, :cond_2

    .line 32
    const/4 v7, 0x0

    .line 33
    .local v7, "tabToUse":Lcom/biznessapps/more/Tab;
    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v6

    .line 34
    .local v6, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/more/Tab;

    .line 35
    .local v3, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v3}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    move-object v7, v3

    .line 40
    .end local v3    # "item":Lcom/biznessapps/more/Tab;
    :cond_1
    if-eqz v7, :cond_2

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Lcom/biznessapps/more/Tab;->getSectionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/biznessapps/more/Tab;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v7, v9, v10}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 43
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 47
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "linkedTab":Lcom/biznessapps/more/Tab;
    .end local v6    # "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    .end local v7    # "tabToUse":Lcom/biznessapps/more/Tab;
    :cond_2
    return-void
.end method

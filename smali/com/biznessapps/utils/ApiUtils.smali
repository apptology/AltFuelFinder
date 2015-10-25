.class public Lcom/biznessapps/utils/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSubject(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget v2, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "subject":Ljava/lang/String;
    sget v2, Lcom/biznessapps/layout/R$string;->code_name:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "defaultApp":Ljava/lang/String;
    const-string v2, "biznessapps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "previewapp11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_1
    return-object v1
.end method

.method public static getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tab"    # Lcom/biznessapps/more/Tab;
    .param p2, "sectionId"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "URL"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :cond_0
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 35
    const-string v1, "TAB_LABEL"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :goto_0
    invoke-static {p2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    const-string v1, "SECTION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :goto_1
    const-string v1, "USE_NATIVE_BROWSER"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->isOpenInSafari()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string v1, "TAB_FRAGMENT"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    return-object v0

    .line 40
    :cond_1
    const-string v1, "ITEM_ID"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 45
    :cond_2
    const-string v1, "SECTION_ID"

    invoke-virtual {p1}, Lcom/biznessapps/more/Tab;->getSectionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static hasNotData(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/biznessapps/common/entities/CommonEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/biznessapps/common/entities/CommonEntity;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static openTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "detailId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v3

    .line 59
    .local v3, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v4, 0x0

    .line 60
    .local v4, "tabToUse":Lcom/biznessapps/more/Tab;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/more/Tab;

    .line 61
    .local v2, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v2}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    move-object v4, v2

    .line 66
    .end local v2    # "item":Lcom/biznessapps/more/Tab;
    :cond_1
    if-eqz v4, :cond_3

    .line 67
    invoke-static {p0, v4, p2, p3}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_2

    .line 70
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :cond_2
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

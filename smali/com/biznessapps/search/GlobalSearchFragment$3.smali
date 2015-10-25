.class Lcom/biznessapps/search/GlobalSearchFragment$3;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/search/GlobalSearchFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/search/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/search/GlobalSearchFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/biznessapps/search/GlobalSearchFragment$3;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/news/SearchEntity;

    .line 123
    .local v3, "searchItem":Lcom/biznessapps/news/SearchEntity;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v5, 0x0

    .line 125
    .local v5, "tabToUse":Lcom/biznessapps/more/Tab;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/more/Tab;

    .line 126
    .local v2, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v2}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getTabId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    move-object v5, v2

    .line 132
    .end local v2    # "item":Lcom/biznessapps/more/Tab;
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getNewsType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 133
    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 134
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/biznessapps/search/GlobalSearchFragment$3;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-virtual {v6}, Lcom/biznessapps/search/GlobalSearchFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v7}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "URL"

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v6, "TAB_FRAGMENT"

    const-string v7, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v6, "TAB_UNIQUE_ID"

    iget-object v7, p0, Lcom/biznessapps/search/GlobalSearchFragment$3;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-virtual {v7}, Lcom/biznessapps/search/GlobalSearchFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    iget-object v6, p0, Lcom/biznessapps/search/GlobalSearchFragment$3;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-virtual {v6, v1}, Lcom/biznessapps/search/GlobalSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 145
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 141
    :cond_3
    if-eqz v5, :cond_2

    .line 142
    iget-object v6, p0, Lcom/biznessapps/search/GlobalSearchFragment$3;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-virtual {v6}, Lcom/biznessapps/search/GlobalSearchFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getSectionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/biznessapps/news/SearchEntity;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v5, v7, v8}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 143
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/biznessapps/search/GlobalSearchFragment$3;->this$0:Lcom/biznessapps/search/GlobalSearchFragment;

    invoke-virtual {v6, v1}, Lcom/biznessapps/search/GlobalSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

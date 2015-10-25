.class final Lcom/biznessapps/home_screen/HomeScreenHelper$5;
.super Ljava/lang/Object;
.source "HomeScreenHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenHelper;->defineSubButtons(Landroid/widget/GridView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;

.field final synthetic val$tab:Lcom/biznessapps/more/Tab;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/CachingManager;Lcom/biznessapps/more/Tab;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$cacher:Lcom/biznessapps/api/CachingManager;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$tab:Lcom/biznessapps/more/Tab;

    iput-object p3, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "tabToUse":Lcom/biznessapps/more/Tab;
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v3

    .line 188
    .local v3, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
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

    .line 189
    .local v2, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v2}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$tab:Lcom/biznessapps/more/Tab;

    invoke-virtual {v6}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    move-object v4, v2

    .line 194
    .end local v2    # "item":Lcom/biznessapps/more/Tab;
    :cond_1
    if-eqz v4, :cond_2

    .line 195
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v7, v7}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenHelper$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

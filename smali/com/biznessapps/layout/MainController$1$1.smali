.class Lcom/biznessapps/layout/MainController$1$1;
.super Ljava/lang/Object;
.source "MainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController$1;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/layout/MainController$1;

.field final synthetic val$tabList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iput-object p2, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 170
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 171
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    iget-object v11, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v11, v11, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v11}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 173
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    iget-object v11, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v11, v11, Lcom/biznessapps/layout/MainController$1;->val$appCode:Ljava/lang/String;

    # invokes: Lcom/biznessapps/layout/MainController;->checkAndLoadReseller(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/biznessapps/layout/MainController;->access$000(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 175
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v9, "tabsToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    const/4 v6, 0x0

    .line 179
    .local v6, "musicTabId":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/more/Tab;

    .line 180
    .local v8, "tab":Lcom/biznessapps/more/Tab;
    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 190
    :cond_2
    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->isHide()Z

    move-result v10

    if-nez v10, :cond_0

    .line 193
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v2, "checkingIntent":Landroid/content/Intent;
    const-string v10, "TAB_FRAGMENT"

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-static {v2}, Lcom/biznessapps/api/AppFragmentManager;->getFragmentByController(Landroid/content/Intent;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 198
    const-string v10, "messagesviewcontroller"

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 199
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    const-string v11, "messagesviewcontroller"

    # invokes: Lcom/biznessapps/layout/MainController;->setTabProperty(Lcom/biznessapps/more/Tab;Ljava/lang/String;)V
    invoke-static {v10, v8, v11}, Lcom/biznessapps/layout/MainController;->access$100(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/more/Tab;Ljava/lang/String;)V

    .line 201
    :cond_3
    const-string v10, "MusicViewController"

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 202
    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v6

    .line 203
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    const-string v11, "MusicViewController"

    # invokes: Lcom/biznessapps/layout/MainController;->setTabProperty(Lcom/biznessapps/more/Tab;Ljava/lang/String;)V
    invoke-static {v10, v8, v11}, Lcom/biznessapps/layout/MainController;->access$100(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/more/Tab;Ljava/lang/String;)V

    .line 205
    :cond_4
    const-string v10, "NewsViewController"

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 206
    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/biznessapps/common/entities/AppSettings;->setNewsTabId(Ljava/lang/String;)V

    .line 207
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    const-string v11, "NewsViewController"

    # invokes: Lcom/biznessapps/layout/MainController;->setTabProperty(Lcom/biznessapps/more/Tab;Ljava/lang/String;)V
    invoke-static {v10, v8, v11}, Lcom/biznessapps/layout/MainController;->access$100(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/more/Tab;Ljava/lang/String;)V

    .line 209
    :cond_5
    const-string v10, "MailingListViewController"

    invoke-virtual {v8}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 210
    invoke-virtual {v0, v8}, Lcom/biznessapps/common/entities/AppSettings;->setMailingTab(Lcom/biznessapps/more/Tab;)V

    .line 212
    :cond_6
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 215
    .end local v2    # "checkingIntent":Landroid/content/Intent;
    .end local v8    # "tab":Lcom/biznessapps/more/Tab;
    :cond_7
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v10

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getConsumerKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getConsumerSecret()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/biznessapps/api/DataSource;->getBearerAccessToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "bearerAccessToken":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/biznessapps/api/AppCore;->setBearerAccessToken(Ljava/lang/String;)V

    .line 220
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->val$defaultApp:Ljava/lang/String;

    const-string v11, "biznessapps"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->val$defaultApp:Ljava/lang/String;

    const-string v11, "previewapp11"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 221
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    iget-object v11, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v11, v11, Lcom/biznessapps/layout/MainController$1;->val$appCode:Ljava/lang/String;

    # invokes: Lcom/biznessapps/layout/MainController;->postDevToken(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/biznessapps/layout/MainController;->access$200(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)V

    .line 223
    :cond_8
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # invokes: Lcom/biznessapps/layout/MainController;->loadMusicData(Ljava/lang/String;)V
    invoke-static {v10, v6}, Lcom/biznessapps/layout/MainController;->access$300(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)V

    .line 224
    invoke-static {v9}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabsItems(Ljava/util/List;)V

    .line 226
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v14, :cond_a

    const-string v11, "contentchangerviewcontroller"

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 228
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v11, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v3, "firstScreenIntent":Landroid/content/Intent;
    const-string v11, "TAB_FRAGMENT"

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v11, "TAB_SPECIAL_ID"

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v11, "URL"

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v11, "TAB_LABEL"

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v10, "OPEN_MESSAGE_TAB_PROPERTY"

    iget-object v11, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v11, v11, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->needMessagesTab:Z
    invoke-static {v11}, Lcom/biznessapps/layout/MainController;->access$400(Lcom/biznessapps/layout/MainController;)Z

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10, v3}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    .line 273
    .end local v1    # "bearerAccessToken":Ljava/lang/String;
    .end local v3    # "firstScreenIntent":Landroid/content/Intent;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "musicTabId":Ljava/lang/String;
    .end local v9    # "tabsToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_9
    :goto_1
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->finish()V

    .line 274
    return-void

    .line 237
    .restart local v1    # "bearerAccessToken":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "musicTabId":Ljava/lang/String;
    .restart local v9    # "tabsToDisplay":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_a
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v14, :cond_b

    const-string v11, "inactiveviewcontroller"

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->val$tabList:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/more/Tab;

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getViewController()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 239
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    sget v11, Lcom/biznessapps/layout/R$string;->app_not_being_maintained:I

    # invokes: Lcom/biznessapps/layout/MainController;->showNotification(I)V
    invoke-static {v10, v11}, Lcom/biznessapps/layout/MainController;->access$500(Lcom/biznessapps/layout/MainController;I)V

    goto :goto_1

    .line 241
    :cond_b
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # invokes: Lcom/biznessapps/layout/MainController;->initExceptionHandling()V
    invoke-static {v10}, Lcom/biznessapps/layout/MainController;->access$600(Lcom/biznessapps/layout/MainController;)V

    .line 243
    invoke-virtual {v0, v14}, Lcom/biznessapps/common/entities/AppSettings;->setOfflineCachingPrompt(Z)V

    .line 244
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v13, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v13, v13, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->loadingTimeOffset:J
    invoke-static {v13}, Lcom/biznessapps/layout/MainController;->access$700(Lcom/biznessapps/layout/MainController;)J

    move-result-wide v13

    sub-long/2addr v11, v13

    # setter for: Lcom/biznessapps/layout/MainController;->loadingTimeOffset:J
    invoke-static {v10, v11, v12}, Lcom/biznessapps/layout/MainController;->access$702(Lcom/biznessapps/layout/MainController;J)J

    .line 245
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Application Loading"

    iget-object v12, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v12, v12, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->loadingTimeOffset:J
    invoke-static {v12}, Lcom/biznessapps/layout/MainController;->access$700(Lcom/biznessapps/layout/MainController;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/biznessapps/utils/CommonUtils;->sendTimingEvent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 247
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->isProtected()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-boolean v10, v10, Lcom/biznessapps/layout/MainController$1;->val$isLogged:Z

    if-nez v10, :cond_c

    .line 248
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "PROTECTED_VIEW_CONTROLLER"

    invoke-static {v11}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .restart local v3    # "firstScreenIntent":Landroid/content/Intent;
    const-string v10, "TAB_FRAGMENT"

    const-string v11, "PROTECTED_VIEW_CONTROLLER"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10, v3}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 253
    .end local v3    # "firstScreenIntent":Landroid/content/Intent;
    :cond_c
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # invokes: Lcom/biznessapps/layout/MainController;->registerPushNotifications()V
    invoke-static {v10}, Lcom/biznessapps/layout/MainController;->access$800(Lcom/biznessapps/layout/MainController;)V

    .line 255
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "RICH_PUSH_PROPERTY"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/messages/MessageEntity;

    .line 257
    .local v7, "richNotification":Lcom/biznessapps/messages/MessageEntity;
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->needMessagesTab:Z
    invoke-static {v10}, Lcom/biznessapps/layout/MainController;->access$400(Lcom/biznessapps/layout/MainController;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 258
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # invokes: Lcom/biznessapps/layout/MainController;->openLinkedTab(Lcom/biznessapps/messages/MessageEntity;)V
    invoke-static {v10, v7}, Lcom/biznessapps/layout/MainController;->access$900(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/messages/MessageEntity;)V

    goto/16 :goto_1

    .line 259
    :cond_d
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->needMessagesTab:Z
    invoke-static {v10}, Lcom/biznessapps/layout/MainController;->access$400(Lcom/biznessapps/layout/MainController;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 260
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    const-string v11, "messagesviewcontroller"

    # invokes: Lcom/biznessapps/layout/MainController;->openSpecialTab(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/biznessapps/layout/MainController;->access$1000(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    :cond_e
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v4, "homeScreenIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 264
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->postDevTokenResponseObj:Lorg/json/JSONObject;
    invoke-static {v10}, Lcom/biznessapps/layout/MainController;->access$1100(Lcom/biznessapps/layout/MainController;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 265
    const-string v10, "post_dev_token_response"

    iget-object v11, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v11, v11, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    # getter for: Lcom/biznessapps/layout/MainController;->postDevTokenResponseObj:Lorg/json/JSONObject;
    invoke-static {v11}, Lcom/biznessapps/layout/MainController;->access$1100(Lcom/biznessapps/layout/MainController;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :cond_f
    iget-object v10, p0, Lcom/biznessapps/layout/MainController$1$1;->this$1:Lcom/biznessapps/layout/MainController$1;

    iget-object v10, v10, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v10, v4}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

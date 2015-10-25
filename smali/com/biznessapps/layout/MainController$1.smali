.class Lcom/biznessapps/layout/MainController$1;
.super Lcom/biznessapps/api/AsyncCallback;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController;->loadApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/layout/MainController;

.field final synthetic val$appCode:Ljava/lang/String;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;

.field final synthetic val$defaultApp:Ljava/lang/String;

.field final synthetic val$isLogged:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/api/CachingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    iput-object p2, p0, Lcom/biznessapps/layout/MainController$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    iput-object p3, p0, Lcom/biznessapps/layout/MainController$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/layout/MainController$1;->val$appCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/layout/MainController$1;->val$defaultApp:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/biznessapps/layout/MainController$1;->val$isLogged:Z

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    .line 281
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 282
    sget v1, Lcom/biznessapps/layout/R$string;->server_connection_failure:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/layout/MainController$1$2;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/layout/MainController$1$2;-><init>(Lcom/biznessapps/layout/MainController$1;Landroid/app/Activity;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    .line 292
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/layout/MainController$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->updateInitStateWithData(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/biznessapps/layout/MainController$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getTabList()Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/layout/MainController$1;->val$url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/biznessapps/api/DataSource;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/biznessapps/layout/MainController$1$1;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/layout/MainController$1$1;-><init>(Lcom/biznessapps/layout/MainController$1;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method

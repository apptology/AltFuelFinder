.class Lcom/biznessapps/api/AppCore$2;
.super Lcom/biznessapps/api/AsyncCallback;
.source "AppCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/AppCore;
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
.field final synthetic this$0:Lcom/biznessapps/api/AppCore;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/AppCore;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method

.method private addUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$2;->getMeta()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$2;->getMeta()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    .line 334
    .local v1, "callbackMeta":Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
    iget-object v0, v1, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->callback:Lcom/biznessapps/api/AsyncCallback;

    .line 336
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    # getter for: Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/biznessapps/api/AppCore;->access$200(Lcom/biznessapps/api/AppCore;)Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/biznessapps/layout/R$string;->google_store:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "googleStore":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    const-string v7, "%s\n%s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v6

    aput-object p1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/api/AppCore;->access$384(Lcom/biznessapps/api/AppCore;Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    iget-object v4, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->updateAppSharingText()V

    .line 340
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getHtmlStoreUrl()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "html5StoreUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    iget-object v4, v4, Lcom/biznessapps/api/AppCore;->warphtml5CallBack:Lcom/biznessapps/api/AsyncCallback;

    new-instance v5, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    iget-object v6, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    invoke-direct {v5, v6, v0, v3}, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;-><init>(Lcom/biznessapps/api/AppCore;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/AsyncCallback;->setMeta(Ljava/lang/Object;)V

    .line 342
    iget-object v4, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    # getter for: Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/biznessapps/api/AppCore;->access$200(Lcom/biznessapps/api/AppCore;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/common/BitlyManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/BitlyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/api/AppCore$2;->this$0:Lcom/biznessapps/api/AppCore;

    iget-object v5, v5, Lcom/biznessapps/api/AppCore;->warphtml5CallBack:Lcom/biznessapps/api/AsyncCallback;

    invoke-virtual {v4, v3, v5}, Lcom/biznessapps/common/BitlyManager;->getShortURL(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)Z

    .line 343
    return-void

    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v1    # "callbackMeta":Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
    .end local v2    # "googleStore":Ljava/lang/String;
    .end local v3    # "html5StoreUrl":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 330
    goto :goto_0
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$2;->getMeta()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$2;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    .line 356
    .local v0, "callbackMeta":Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
    iget-object v1, v0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->orgUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/biznessapps/api/AppCore$2;->addUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 328
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/AppCore$2;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/biznessapps/api/AppCore$2;->addUrl(Ljava/lang/String;)V

    .line 348
    return-void
.end method

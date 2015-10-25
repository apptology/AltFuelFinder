.class Lcom/biznessapps/api/AppCore$3;
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
    .line 364
    iput-object p1, p0, Lcom/biznessapps/api/AppCore$3;->this$0:Lcom/biznessapps/api/AppCore;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method

.method private addUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$3;->getMeta()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$3;->getMeta()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    .line 370
    .local v1, "callbackMeta":Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
    iget-object v0, v1, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->callback:Lcom/biznessapps/api/AsyncCallback;

    .line 372
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/biznessapps/api/AppCore$3;->this$0:Lcom/biznessapps/api/AppCore;

    # getter for: Lcom/biznessapps/api/AppCore;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/biznessapps/api/AppCore;->access$200(Lcom/biznessapps/api/AppCore;)Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/biznessapps/layout/R$string;->html5_store:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "html5Store":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/api/AppCore$3;->this$0:Lcom/biznessapps/api/AppCore;

    const-string v6, "%s\n%s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v5

    aput-object p1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/api/AppCore;->access$384(Lcom/biznessapps/api/AppCore;Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    iget-object v3, p0, Lcom/biznessapps/api/AppCore$3;->this$0:Lcom/biznessapps/api/AppCore;

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->updateAppSharingText()V

    .line 376
    iget-object v3, p0, Lcom/biznessapps/api/AppCore$3;->this$0:Lcom/biznessapps/api/AppCore;

    # getter for: Lcom/biznessapps/api/AppCore;->appSharingText:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/api/AppCore;->access$300(Lcom/biznessapps/api/AppCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/Object;)V

    .line 377
    return-void

    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v1    # "callbackMeta":Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
    .end local v2    # "html5Store":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 366
    goto :goto_0
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$3;->getMeta()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$3;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;

    .line 390
    .local v0, "callbackMeta":Lcom/biznessapps/api/AppCore$ShareCallBackMeta;
    iget-object v1, v0, Lcom/biznessapps/api/AppCore$ShareCallBackMeta;->orgUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/biznessapps/api/AppCore$3;->addUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 364
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/AppCore$3;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/biznessapps/api/AppCore$3;->addUrl(Ljava/lang/String;)V

    .line 382
    return-void
.end method

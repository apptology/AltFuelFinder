.class Lcom/biznessapps/common/BitlyManager$1;
.super Lcom/biznessapps/api/AsyncCallback;
.source "BitlyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/BitlyManager;
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
.field final synthetic this$0:Lcom/biznessapps/common/BitlyManager;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/BitlyManager;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/common/BitlyManager$1;->this$0:Lcom/biznessapps/common/BitlyManager;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/common/BitlyManager$1;->getMeta()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/BitlyManager$1;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/AsyncCallback;

    .line 116
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/BitlyManager$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/common/BitlyManager$1;->getMeta()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/BitlyManager$1;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/AsyncCallback;

    .line 80
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 84
    .local v3, "shortUrl":Ljava/lang/String;
    const-string v5, "status_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 85
    .local v4, "statusCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 87
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0, v3}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/Object;)V

    .line 95
    :cond_2
    if-nez v3, :cond_0

    .line 96
    new-instance v5, Ljava/lang/Exception;

    iget-object v6, p0, Lcom/biznessapps/common/BitlyManager$1;->this$0:Lcom/biznessapps/common/BitlyManager;

    # getter for: Lcom/biznessapps/common/BitlyManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/biznessapps/common/BitlyManager;->access$000(Lcom/biznessapps/common/BitlyManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "shortUrl":Ljava/lang/String;
    .end local v4    # "statusCode":I
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    iget-object v5, p0, Lcom/biznessapps/common/BitlyManager$1;->this$0:Lcom/biznessapps/common/BitlyManager;

    # getter for: Lcom/biznessapps/common/BitlyManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/biznessapps/common/BitlyManager;->access$000(Lcom/biznessapps/common/BitlyManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    iget-object v7, p0, Lcom/biznessapps/common/BitlyManager$1;->this$0:Lcom/biznessapps/common/BitlyManager;

    # getter for: Lcom/biznessapps/common/BitlyManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/biznessapps/common/BitlyManager;->access$000(Lcom/biznessapps/common/BitlyManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$string;->unknown_error:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/common/BitlyManager$1;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

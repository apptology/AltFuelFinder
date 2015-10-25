.class final Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;
.super Landroid/os/AsyncTask;
.source "TwitterSocialNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PostImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 260
    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 268
    iget-object v5, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v5}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v5, v5, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 270
    aget-object v0, p1, v7

    .line 271
    .local v0, "caption":Ljava/lang/String;
    aget-object v2, p1, v6

    .line 274
    .local v2, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ltwitter4j/StatusUpdate;

    invoke-direct {v3, v0}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "status":Ltwitter4j/StatusUpdate;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v3, v4}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 280
    iget-object v5, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v5, v5, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v5, v3}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v3    # "status":Ltwitter4j/StatusUpdate;
    .end local v4    # "tempFile":Ljava/io/File;
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .end local v0    # "caption":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 268
    goto :goto_0

    .line 281
    .restart local v0    # "caption":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pic Upload error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v5, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$1000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    new-instance v7, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;

    invoke-direct {v7, p0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;Ljava/lang/Exception;)V

    invoke-virtual {v5, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 265
    return-void
.end method

.class final Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;
.super Landroid/os/AsyncTask;
.source "TwitterSocialNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PostTweet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mException:Ltwitter4j/TwitterException;

.field private mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 308
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v4}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v4, v4, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 318
    aget-object v3, p1, v5

    .line 319
    .local v3, "tweetText":Ljava/lang/String;
    new-instance v0, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v0}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 320
    .local v0, "builder":Ltwitter4j/conf/ConfigurationBuilder;
    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v4, v4, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_KEY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 321
    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v4, v4, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_SECRET:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 324
    :try_start_0
    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v4, v4, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v4, v3}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    move-result-object v2

    .line 325
    .local v2, "response":Ltwitter4j/Status;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 331
    .end local v2    # "response":Ltwitter4j/Status;
    :goto_1
    return-object v4

    .end local v0    # "builder":Ltwitter4j/conf/ConfigurationBuilder;
    .end local v3    # "tweetText":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 316
    goto :goto_0

    .line 326
    .restart local v0    # "builder":Ltwitter4j/conf/ConfigurationBuilder;
    .restart local v3    # "tweetText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 328
    iput-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mException:Ltwitter4j/TwitterException;

    .line 331
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    if-eqz v0, :cond_0

    .line 336
    if-eqz p1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    invoke-interface {v0, v1}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mException:Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;->mException:Ltwitter4j/TwitterException;

    invoke-virtual {v3}, Ltwitter4j/TwitterException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 313
    return-void
.end method

.class Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
.super Landroid/os/AsyncTask;
.source "TwitterOAuthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterOAuthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterOAuthTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private accessToken:Ltwitter4j/auth/AccessToken;

.field private volatile authorizationDone:Z

.field private callbackUrl:Ljava/lang/String;

.field private dummyCallbackUrl:Z

.field private listener:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;

.field private requestToken:Ltwitter4j/auth/RequestToken;

.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

.field private twitter:Ltwitter4j/Twitter;

.field private volatile verifier:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 878
    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView;
    .param p2, "x1"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;-><init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->notifyAuthorization()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->verifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->verifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->dummyCallbackUrl:Z

    return v0
.end method

.method private authorize()V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->publishProgress([Ljava/lang/Object;)V

    .line 813
    return-void
.end method

.method private checkCancellation(Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    const-string v0, "TwitterOAuthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancellation was detected in the context of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearTaskReference()V
    .locals 3

    .prologue
    .line 772
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->access$200(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    const/4 v2, 0x0

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->twitterOAuthTask:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;
    invoke-static {v0, v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->access$202(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;

    .line 778
    :cond_0
    monitor-exit v1

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private varargs debugDoInBackground([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 668
    const-string v1, "TwitterOAuthView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONSUMER KEY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v1, "TwitterOAuthView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONSUMER SECRET = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v1, "TwitterOAuthView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALLBACK URL = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string v1, "TwitterOAuthView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DUMMY CALLBACK URL = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v0, "twitter4j.debug"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    return-void
.end method

.method private fireOnFailure(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const-string v0, "TwitterOAuthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling Listener.onFailure, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->listener:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-interface {v0, v1, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;->onFailure(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V

    .line 767
    return-void
.end method

.method private fireOnSuccess()V
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string v0, "TwitterOAuthView"

    const-string v1, "Calling Listener.onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->listener:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-interface {v0, v1, v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;->onSuccess(Lcom/biznessapps/common/social/twitter/TwitterOAuthView;Ltwitter4j/auth/AccessToken;)V

    .line 755
    return-void
.end method

.method private getAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 5

    .prologue
    .line 973
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->twitter:Ltwitter4j/Twitter;

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->requestToken:Ltwitter4j/auth/RequestToken;

    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->verifier:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v1

    .line 975
    .local v1, "token":Ltwitter4j/auth/AccessToken;
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    const-string v2, "TwitterOAuthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got an access token for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .end local v1    # "token":Ltwitter4j/auth/AccessToken;
    :cond_0
    :goto_0
    return-object v1

    .line 982
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 986
    const-string v2, "TwitterOAuthView"

    const-string v3, "Failed to get an access token."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 4

    .prologue
    .line 787
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v2}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/auth/RequestToken;

    move-result-object v1

    .line 789
    .local v1, "token":Ltwitter4j/auth/RequestToken;
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    const-string v2, "TwitterOAuthView"

    const-string v3, "Got a request token."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v1    # "token":Ltwitter4j/auth/RequestToken;
    :cond_0
    :goto_0
    return-object v1

    .line 796
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 800
    const-string v2, "TwitterOAuthView"

    const-string v3, "Failed to get a request token."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAuthorization()V
    .locals 2

    .prologue
    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->authorizationDone:Z

    .line 865
    monitor-enter p0

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const-string v0, "TwitterOAuthView"

    const-string v1, "Notifying that the authorization step was done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 874
    monitor-exit p0

    .line 875
    return-void

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitForAuthorization()Z
    .locals 3

    .prologue
    .line 818
    :goto_0
    iget-boolean v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->authorizationDone:Z

    if-nez v1, :cond_3

    .line 821
    const-string v1, "waitForAuthorization()"

    invoke-direct {p0, v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->checkCancellation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    const/4 v1, 0x1

    .line 856
    :goto_1
    return v1

    .line 827
    :cond_0
    monitor-enter p0

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    const-string v1, "TwitterOAuthView"

    const-string v2, "Waiting for the authorization step to be done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 839
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    const-string v1, "TwitterOAuthView"

    const-string v2, "Interrupted while waiting for the authorization step to be done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 850
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 852
    const-string v1, "TwitterOAuthView"

    const-string v2, "Finished waiting for the authorization step to be done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 595
    const-string v3, "doInBackground() [on entry]"

    invoke-direct {p0, v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->checkCancellation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 662
    :goto_0
    return-object v3

    .line 601
    :cond_0
    const/4 v3, 0x0

    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 602
    .local v1, "consumerKey":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    .line 603
    .local v2, "consumerSecret":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->callbackUrl:Ljava/lang/String;

    .line 604
    const/4 v3, 0x3

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->dummyCallbackUrl:Z

    .line 605
    const/4 v3, 0x4

    aget-object v3, p1, v3

    check-cast v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;

    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->listener:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Listener;

    .line 607
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 609
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->debugDoInBackground([Ljava/lang/Object;)V

    .line 614
    :cond_1
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->twitter:Ltwitter4j/Twitter;

    .line 615
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v3, v1, v2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->getRequestToken()Ltwitter4j/auth/RequestToken;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 619
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->requestToken:Ltwitter4j/auth/RequestToken;

    if-nez v3, :cond_2

    .line 622
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->REQUEST_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    goto :goto_0

    .line 629
    :cond_2
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->authorize()V

    .line 632
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->waitForAuthorization()Z

    move-result v0

    .line 633
    .local v0, "cancelled":Z
    if-eqz v0, :cond_3

    .line 636
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    goto :goto_0

    .line 640
    :cond_3
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->verifier:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 643
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->AUTHORIZATION_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    goto :goto_0

    .line 647
    :cond_4
    const-string v3, "doInBackground() [before getAccessToken()]"

    invoke-direct {p0, v3}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->checkCancellation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 649
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    goto :goto_0

    .line 654
    :cond_5
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->getAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 655
    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->accessToken:Ltwitter4j/auth/AccessToken;

    if-nez v3, :cond_6

    .line 658
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->ACCESS_TOKEN_ERROR:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    goto :goto_0

    .line 662
    :cond_6
    sget-object v3, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->SUCCESS:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->doInBackground([Ljava/lang/Object;)Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 736
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 739
    sget-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->fireOnFailure(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V

    .line 742
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->clearTaskReference()V

    .line 743
    return-void
.end method

.method protected onPostExecute(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const-string v0, "TwitterOAuthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    if-nez p1, :cond_1

    .line 714
    sget-object p1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->CANCELLATION:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .line 717
    :cond_1
    sget-object v0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;->SUCCESS:Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    if-ne p1, v0, :cond_2

    .line 720
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->fireOnSuccess()V

    .line 729
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->clearTaskReference()V

    .line 730
    return-void

    .line 725
    :cond_2
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->fireOnFailure(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 549
    check-cast p1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->onPostExecute(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$Result;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    new-instance v1, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask$LocalWebViewClient;-><init>(Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;Lcom/biznessapps/common/social/twitter/TwitterOAuthView$1;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 588
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 549
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 681
    const-string v1, "onProgressUpdate()"

    invoke-direct {p0, v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->checkCancellation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 691
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->requestToken:Ltwitter4j/auth/RequestToken;

    invoke-virtual {v2}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&force_login=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    const-string v1, "TwitterOAuthView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading the authorization URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterOAuthView$TwitterOAuthTask;->this$0:Lcom/biznessapps/common/social/twitter/TwitterOAuthView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/social/twitter/TwitterOAuthView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

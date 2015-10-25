.class Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;
.super Landroid/os/AsyncTask;
.source "TwitterLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessTokenGet"
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
.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;


# direct methods
.method private constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    .param p2, "x1"    # Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;-><init>(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$300(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mRequestToken:Ltwitter4j/auth/RequestToken;
    invoke-static {v4}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$200(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/RequestToken;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mOAuthVerifier:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$600(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    # setter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v2, v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$702(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;Ltwitter4j/auth/AccessToken;)Ltwitter4j/auth/AccessToken;

    .line 209
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$700(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    iput-object v3, v2, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 212
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$700(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessToken:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$700(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessTokenSecret:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mTwitter:Ltwitter4j/Twitter;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$300(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/Twitter;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mAccessToken:Ltwitter4j/auth/AccessToken;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$700(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ltwitter4j/Twitter;->showUser(J)Ltwitter4j/User;

    move-result-object v1

    .line 215
    .local v1, "user":Ltwitter4j/User;
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userName:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/User;->getId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    .line 217
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/User;->getProfileImageURL()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->imgURL:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mUserInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-static {v3}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->access$800(Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->saveUserInfo(Lcom/biznessapps/common/social/twitter/TwitterUserInfo;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .end local v1    # "user":Ltwitter4j/User;
    :goto_0
    return-object v2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 222
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    .line 224
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/Boolean;

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    .line 233
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const-string v1, ""

    iput-object v1, v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginError:Ljava/lang/String;

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->dismiss()V

    .line 239
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->this$0:Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->mLoginCompleted:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog$AccessTokenGet;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 203
    return-void
.end method

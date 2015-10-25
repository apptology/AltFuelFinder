.class public Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;
.super Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
.source "TwitterSocialNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostTweet;,
        Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;
    }
.end annotation


# static fields
.field public static final BIZNESS_TWITTER_CALLBACK_URL:Ljava/lang/String; = "http://www.google.com/callback"

.field public static final BIZNESS_TWITTER_CONSUMER_KEY:Ljava/lang/String; = "ibeMh2JAmmQw09B1nfap5Q"

.field public static final BIZNESS_TWITTER_CONSUMER_SECRET:Ljava/lang/String; = "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38"

.field private static final CACHE_KEY_TWITTER_ACCESS_TOKEN:Ljava/lang/String; = "twitter_access_token"

.field private static final CACHE_KEY_TWITTER_ACCESS_TOKEN_SECRET:Ljava/lang/String; = "twitter_access_token_secret"

.field private static final CACHE_KEY_TWITTER_IMAGE_URL:Ljava/lang/String; = "twitter_image_url"

.field private static final CACHE_KEY_TWITTER_USER_ID:Ljava/lang/String; = "twitter_user_id"

.field private static final CACHE_KEY_TWITTER_USER_NAME:Ljava/lang/String; = "twitter_user_name"

.field public static final CHARACTER_LIMIT:I = 0x8c

.field private static final TWITTER_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "prefs_twitter"

.field private static sInstance:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;


# instance fields
.field public TWITTER_CONSUMER_KEY:Ljava/lang/String;

.field public TWITTER_CONSUMER_SECRET:Ljava/lang/String;

.field public accessToken:Ltwitter4j/auth/AccessToken;

.field private mIsLoggedIn:Z

.field private mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

.field public oauthURL:Ljava/lang/String;

.field public oauthVerifier:Ljava/lang/String;

.field public requestToken:Ltwitter4j/auth/RequestToken;

.field public twitter:Ltwitter4j/Twitter;

.field public userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x2

    sget-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_TWITTER_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_KEY:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_SECRET:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    .line 84
    sput-object p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .line 86
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->initTwitter()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method private createNewTwitterContext()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 117
    :cond_0
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    .line 118
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_SECRET:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 399
    const-string v0, ""

    .line 401
    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    if-nez v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getTwitterSocialNetworkHandler()Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .line 61
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 62
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->setAttachedActivity(Landroid/app/Activity;)V

    .line 64
    :cond_1
    sget-object v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    return-object v0
.end method

.method private initTwitter()V
    .locals 5

    .prologue
    .line 95
    const-string v0, "ibeMh2JAmmQw09B1nfap5Q"

    const-string v1, "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38"

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->setConsumerKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->createNewTwitterContext()V

    .line 100
    new-instance v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mContext:Landroid/content/Context;

    const-string v2, "prefs_twitter"

    invoke-direct {v0, v1, v2}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->loadUserInfo()Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    .line 103
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    invoke-virtual {v0}, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ltwitter4j/auth/AccessToken;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iget-object v2, v2, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessTokenSecret:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iget-wide v3, v3, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    invoke-direct {v0, v1, v2, v3, v4}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 106
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public getCharacterLimit()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x8c

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iget-wide v0, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserProfileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    iget-object v0, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->imgURL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    return v0
.end method

.method public like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return v3

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    const-string v1, "Error"

    const-string v2, "Not Implemented Yet"

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUserInfo()Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    invoke-direct {v0}, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;-><init>()V

    .line 390
    .local v0, "userInfo":Lcom/biznessapps/common/social/twitter/TwitterUserInfo;
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->loadUserInfo(Lcom/biznessapps/common/social/twitter/TwitterUserInfo;)V

    .line 392
    return-object v0
.end method

.method public loadUserInfo(Lcom/biznessapps/common/social/twitter/TwitterUserInfo;)V
    .locals 3
    .param p1, "userInfo"    # Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    .prologue
    .line 404
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 406
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 407
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "twitter_access_token"

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessToken:Ljava/lang/String;

    .line 408
    const-string v1, "twitter_access_token_secret"

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessTokenSecret:Ljava/lang/String;

    .line 409
    const-string v1, "twitter_user_name"

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userName:Ljava/lang/String;

    .line 410
    const-string v1, "twitter_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    .line 411
    const-string v1, "twitter_image_url"

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getBundleString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->imgURL:Ljava/lang/String;

    .line 412
    return-void

    .line 404
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return v2

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    invoke-interface {v1, p0}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->newInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;

    move-result-object v0

    .line 138
    .local v0, "twitterLoginDialog":Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;
    new-instance v1, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$1;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    new-instance v1, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$2;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterLoginDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return v4

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessToken:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessTokenSecret:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    .line 170
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userName:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->imgURL:Ljava/lang/String;

    .line 172
    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->oauthURL:Ljava/lang/String;

    .line 173
    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 174
    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->twitter:Ltwitter4j/Twitter;

    .line 176
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->userInfo:Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->saveUserInfo(Lcom/biznessapps/common/social/twitter/TwitterUserInfo;)V

    .line 177
    iput-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->oauthVerifier:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->createNewTwitterContext()V

    .line 181
    iput-boolean v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z

    .line 183
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_0
.end method

.method public publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3, p2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    .line 194
    :cond_0
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$3;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v0

    .line 218
    .local v0, "result":Z
    goto :goto_0
.end method

.method public saveUserInfo(Lcom/biznessapps/common/social/twitter/TwitterUserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Lcom/biznessapps/common/social/twitter/TwitterUserInfo;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 416
    .local v0, "cacheUserInfo":Landroid/os/Bundle;
    const-string v1, "twitter_access_token"

    iget-object v2, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "twitter_access_token_secret"

    iget-object v2, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->accessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "twitter_user_name"

    iget-object v2, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "twitter_user_id"

    iget-wide v2, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->userID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 420
    const-string v1, "twitter_image_url"

    iget-object v2, p1, Lcom/biznessapps/common/social/twitter/TwitterUserInfo;->imgURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 423
    return-void
.end method

.method public setConsumerKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_KEY:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->TWITTER_CONSUMER_SECRET:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return v3

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    const-string v1, "Error"

    const-string v2, "Not Implemented Yet"

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
.super Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
.source "FacebookSocialNetworkHandler.java"


# static fields
.field private static final CACHE_USER_ID_KEY:Ljava/lang/String; = "FacebookUserId"

.field private static final CACHE_USER_NAME_KEY:Ljava/lang/String; = "FacebookUserName"

.field private static final CACHE_USER_PROFILE_URL:Ljava/lang/String; = "FacebookProfileURL"

.field public static final CHARACTER_LIMIT:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "social_facebook"

.field private static sInstance:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;


# instance fields
.field private FACEBOOK_APP_ID:Ljava/lang/String;

.field private mIsLogging:Z

.field private mPendingPermissions:[Ljava/lang/String;

.field private mSession:Lcom/facebook/Session;

.field private mSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

.field private mUserID:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x1

    sget-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_FACEBOOK_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->FACEBOOK_APP_ID:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    .line 437
    new-instance v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 77
    sput-object p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .line 80
    invoke-direct {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->initTokenStorage()V

    .line 81
    invoke-direct {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->initUI()V

    .line 83
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getFacebookAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->setFacebookAppId(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private _login(Lcom/facebook/SessionLoginBehavior;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "loginBahavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 335
    iget-boolean v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    if-eqz v3, :cond_0

    .line 336
    const-string v2, "social_facebook"

    const-string v3, "Still on the logging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    const-string v3, "Concurrent Logging"

    const-string v4, "Still on the logging"

    invoke-interface {v2, p0, v3, v4}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_0
    return v1

    .line 342
    :cond_0
    iput-boolean v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    .line 343
    iput-object p2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mPendingPermissions:[Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->isSessionActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->applyPermission([Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserID:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 350
    iput-boolean v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    .line 352
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    invoke-interface {v1, p0}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    move v1, v2

    .line 353
    goto :goto_0

    .line 357
    :cond_1
    new-instance v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$3;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)V

    invoke-direct {p0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->fetchMe(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V

    move v1, v2

    .line 369
    goto :goto_0

    .line 373
    :cond_2
    iget-object v3, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 374
    const-string v2, "social_facebook"

    const-string v3, "Activity should be attached before calling facebook api"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iput-boolean v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    .line 377
    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    const-string v3, "Context is not activity"

    const-string v4, "Activity should be attached before calling facebook api"

    invoke-interface {v2, p0, v3, v4}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_3
    invoke-direct {p0, v2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->safeCreateSession(Z)V

    .line 383
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 384
    .local v0, "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 385
    const v1, 0xface

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    .line 386
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    move v1, v2

    .line 388
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Lcom/facebook/model/GraphUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
    .param p1, "x1"    # Lcom/facebook/model/GraphUser;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->update(Lcom/facebook/model/GraphUser;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mPendingPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->applyPermission([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
    .param p1, "x1"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->fetchMe(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->clear()V

    return-void
.end method

.method static synthetic access$1700(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/facebook/Session;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    return p1
.end method

.method private applyPermission([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 321
    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 322
    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "activePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->isSubsetOf([Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 326
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 328
    .local v1, "permissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v2, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 331
    .end local v1    # "permissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mPendingPermissions:[Ljava/lang/String;

    .line 332
    return-void

    .line 321
    .end local v0    # "activePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->clear()V

    .line 505
    invoke-direct {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->restore()V

    .line 506
    return-void
.end method

.method private fetchMe(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->isSessionActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 409
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    new-instance v3, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;

    invoke-direct {v3, p0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$4;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)V

    invoke-static {v1, v3}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 428
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 433
    .end local v0    # "request":Lcom/facebook/Request;
    :goto_1
    iput-boolean v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mIsLogging:Z

    .line 434
    return-void

    :cond_0
    move v1, v2

    .line 408
    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {p1, p0, v3, v3}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getFacebookSocialNetworkHandler()Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .line 54
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .line 59
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 57
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->setAttachedActivity(Landroid/app/Activity;)V

    .line 59
    sget-object v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    goto :goto_0
.end method

.method private initTokenStorage()V
    .locals 2

    .prologue
    .line 483
    new-instance v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    .line 484
    invoke-direct {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->restore()V

    .line 485
    return-void
.end method

.method private initUI()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method private isSubsetOf([Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .param p1, "subset"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "superset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 392
    if-nez p1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v4

    .line 394
    :cond_1
    if-nez p2, :cond_2

    move v4, v5

    .line 395
    goto :goto_0

    .line 397
    :cond_2
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 398
    .local v3, "string":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 399
    goto :goto_0

    .line 397
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restore()V
    .locals 2

    .prologue
    .line 509
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 510
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string v1, "FacebookUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserID:Ljava/lang/String;

    .line 511
    const-string v1, "FacebookUserName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserName:Ljava/lang/String;

    .line 512
    return-void
.end method

.method private safeCreateSession(Z)V
    .locals 2
    .param p1, "forceCreate"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->FACEBOOK_APP_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-nez v0, :cond_0

    .line 101
    :cond_2
    new-instance v0, Lcom/facebook/Session$Builder;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->FACEBOOK_APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    .line 104
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0
.end method

.method private update(Lcom/facebook/model/GraphUser;)V
    .locals 6
    .param p1, "user"    # Lcom/facebook/model/GraphUser;

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserID:Ljava/lang/String;

    .line 493
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserName:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 496
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string v1, "FacebookUserId"

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "FacebookUserName"

    iget-object v2, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v1, "FacebookProfileURL"

    const-string v2, "http://graph.facebook.com/%s/picture"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserID:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->save(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 295
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 297
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "accessToken":Ljava/lang/String;
    goto :goto_0

    .line 294
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCharacterLimit()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x1388

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfileURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 311
    const-string v1, "http://graph.facebook.com/%s/picture"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "profileURL":Ljava/lang/String;
    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->safeCreateSession(Z)V

    .line 134
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :cond_0
    return v0
.end method

.method public isSessionActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->safeCreateSession(Z)V

    .line 111
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return v2

    .line 267
    :cond_0
    const-string v0, "social_facebook"

    const-string v1, "Not implemented Yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/biznessapps/common/social/OnSocialLoginListener;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-direct {p0, v0, p2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->_login(Lcom/facebook/SessionLoginBehavior;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 160
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mPendingPermissions:[Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mSession:Lcom/facebook/Session;

    iget-object v0, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 4
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "publish_actions"

    aput-object v3, v0, v1

    .line 225
    .local v0, "PERMISSIONS":[Ljava/lang/String;
    new-instance v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;[Ljava/lang/String;)Z

    move v1, v2

    .line 258
    goto :goto_0
.end method

.method public publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :goto_0
    return v1

    .line 173
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "publish_actions"

    aput-object v3, v0, v1

    .line 174
    .local v0, "PERMISSIONS":[Ljava/lang/String;
    new-instance v1, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1;-><init>(Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;[Ljava/lang/String;)Z

    move v1, v2

    .line 203
    goto :goto_0
.end method

.method public publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v0

    .line 213
    .local v0, "result":Z
    goto :goto_0
.end method

.method public setFacebookAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->FACEBOOK_APP_ID:Ljava/lang/String;

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->safeCreateSession(Z)V

    .line 90
    return-void
.end method

.method public unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return v2

    .line 285
    :cond_0
    const-string v0, "social_facebook"

    const-string v1, "Not implemented Yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

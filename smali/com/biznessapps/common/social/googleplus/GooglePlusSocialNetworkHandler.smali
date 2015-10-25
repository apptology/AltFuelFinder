.class public Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;
.super Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
.source "GooglePlusSocialNetworkHandler.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;


# static fields
.field private static final CACHE_KEY_GOOGLE_PROFILE_URL:Ljava/lang/String; = "google_profile_url"

.field private static final CACHE_KEY_GOOGLE_USER_NAME:Ljava/lang/String; = "google_user_name"

.field public static final CHARACTER_LIMIT:I = 0x1388

.field private static final GOOGLE_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "prefs_google"

.field private static final LABEL_VIEW_ITEM:Ljava/lang/String; = "VIEW_ITEM"

.field private static final PLUS_DEEP_LINK_ID:Ljava/lang/String; = "/+/mobile/android/"

.field private static final PLUS_DEEP_LINK_URL:Ljava/lang/String; = "https://developers.google.com/+/mobile/android/"

.field private static final REQUEST_CODE_GET_GOOGLE_PLAY_SERVICES:I = -0x3

.field private static final REQUEST_CODE_PUBLISH:I = 0x2711

.field private static final REQUEST_CODE_SIGN_IN:I = 0x2710

.field private static sInstance:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;


# instance fields
.field private mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field private mIsLogging:Z

.field private mPlusClient:Lcom/google/android/gms/plus/PlusClient;

.field private mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

.field public mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x3

    sget-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_GOOGLE_PLUS_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    .line 80
    new-instance v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    const-string v2, "prefs_google"

    invoke-direct {v0, v1, v2}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    .line 82
    invoke-virtual {p0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->loadUserInfo()Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;)Lcom/google/android/gms/plus/PlusClient;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getGooglePlusSocialNetworkHandler()Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->setAttachedActivity(Landroid/app/Activity;)V

    .line 61
    sget-object v0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    return-object v0
.end method


# virtual methods
.method public checkAvailable()Z
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 139
    .local v0, "available":I
    if-nez v0, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    .line 143
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCharacterLimit()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x1388

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    iget-object v0, v0, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    iget-object v0, v0, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserProfileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    iget-object v0, v0, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->profileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->checkAvailable()Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 158
    .local v0, "loggedIn":Z
    :goto_0
    return v0

    .line 156
    .end local v0    # "loggedIn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :cond_0
    return v1
.end method

.method public loadUserInfo()Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    invoke-direct {v0}, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;-><init>()V

    .line 355
    .local v0, "userInfo":Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->loadUserInfo(Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;)V

    .line 357
    return-object v0
.end method

.method public loadUserInfo(Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;)V
    .locals 2
    .param p1, "userInfo"    # Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 363
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 364
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "google_user_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userName:Ljava/lang/String;

    .line 365
    const-string v1, "google_profile_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->profileUrl:Ljava/lang/String;

    .line 366
    return-void

    .line 361
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    :goto_0
    return v1

    .line 166
    :cond_0
    iget-boolean v3, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    if-eqz v3, :cond_1

    .line 167
    iget-object v2, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    const-string v3, "Error"

    const-string v4, "Concurrent Logging"

    invoke-interface {v2, p0, v3, v4}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 172
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    iput-boolean v2, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    .line 175
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v1, :cond_2

    :goto_1
    move v1, v2

    .line 191
    goto :goto_0

    .line 180
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v4, 0x2710

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 184
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    goto :goto_1

    .line 188
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    invoke-interface {v1, p0}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_1
.end method

.method public logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/PlusClient;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    .line 201
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->clearDefaultAccount()V

    .line 202
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userName:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->saveUserInfo(Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;)V

    .line 205
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 206
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAccessRevoked(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 219
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 117
    :cond_0
    if-ne p2, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 121
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    .line 125
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_1

    .line 128
    if-ne p2, v1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onPublishCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v1

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    .line 227
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    iget-object v2, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/PlusClient;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userName:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    .line 229
    .local v0, "person":Lcom/google/android/gms/plus/model/people/Person;
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userId:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userName:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    invoke-interface {v0}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->profileUrl:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mUserInfo:Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    invoke-virtual {p0, v1}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->saveUserInfo(Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;)V

    .line 237
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    invoke-interface {v1, p0}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 238
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 250
    iget-boolean v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v3, 0x2710

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 256
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 243
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onPause(Landroid/content/Context;)V

    .line 107
    iget-boolean v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->disconnect()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onResume(Landroid/content/Context;)V

    .line 93
    iget-boolean v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mIsLogging:Z

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/google/android/gms/plus/PlusClient$Builder;

    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/plus/PlusClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/biznessapps/common/social/googleplus/MomentUtil;->ACTIONS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusClient$Builder;->setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://www.googleapis.com/auth/plus.login"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusClient$Builder;->setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient$Builder;->build()Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    .line 99
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    .line 101
    :cond_0
    return-void
.end method

.method public publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v6, 0x0

    .line 264
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    const/4 v4, 0x0

    .line 310
    :goto_0
    return v4

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-virtual {v4}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 274
    const-string v0, "/?view=true"

    .line 275
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://developers.google.com/+/mobile/android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 276
    .local v3, "callToActionUrl":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/+/mobile/android/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "callToActionDeepLinkId":Ljava/lang/String;
    new-instance v1, Lcom/google/android/gms/plus/PlusShare$Builder;

    iget-object v4, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;Lcom/google/android/gms/plus/PlusClient;)V

    .line 282
    .local v1, "builder":Lcom/google/android/gms/plus/PlusShare$Builder;
    const-string v4, "VIEW_ITEM"

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/plus/PlusShare$Builder;->addCallToAction(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 285
    const-string v4, "https://developers.google.com/+/mobile/android/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 288
    const-string v4, "/+/mobile/android/"

    invoke-virtual {v1, v4, v6, v6, v6}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 291
    invoke-virtual {v1, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 293
    iget-object v4, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x2711

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "builder":Lcom/google/android/gms/plus/PlusShare$Builder;
    .end local v2    # "callToActionDeepLinkId":Ljava/lang/String;
    .end local v3    # "callToActionUrl":Landroid/net/Uri;
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 295
    :cond_1
    new-instance v4, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;

    iget-object v5, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, p2}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;-><init>(Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)V

    invoke-virtual {p0, v4}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    goto :goto_1
.end method

.method public publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :cond_0
    return v1
.end method

.method public saveUserInfo(Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;)V
    .locals 3
    .param p1, "userInfo"    # Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    .line 370
    .local v0, "cacheUserInfo":Landroid/os/Bundle;
    const-string v1, "google_user_name"

    iget-object v2, p1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "google_profile_url"

    iget-object v2, p1, Lcom/biznessapps/common/social/googleplus/GooglePlusUserInfo;->profileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mTokenCache:Lcom/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->save(Landroid/os/Bundle;)V

    .line 374
    return-void
.end method

.method public unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :cond_0
    return v1
.end method

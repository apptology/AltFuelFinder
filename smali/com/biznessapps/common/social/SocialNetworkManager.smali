.class public Lcom/biznessapps/common/social/SocialNetworkManager;
.super Ljava/lang/Object;
.source "SocialNetworkManager.java"


# static fields
.field public static final SHORTEST_CHARACTER_LIMIT:I = 0x8c

.field public static final SOCIAL_EMAIL:I = 0x0

.field public static SOCIAL_EMAIL_NAME:Ljava/lang/String; = null

.field public static final SOCIAL_FACEBOOK:I = 0x1

.field public static SOCIAL_FACEBOOK_NAME:Ljava/lang/String; = null

.field public static final SOCIAL_GOOGLE_PLUS:I = 0x3

.field public static SOCIAL_GOOGLE_PLUS_NAME:Ljava/lang/String; = null

.field public static final SOCIAL_TWITTER:I = 0x2

.field public static SOCIAL_TWITTER_NAME:Ljava/lang/String;

.field public static mSocialNetworkHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/common/social/CommonSocialNetworkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static sManager:Lcom/biznessapps/common/social/SocialNetworkManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmailSocialNetworkHandler:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

.field private mFacebookSocialNetworkHandler:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

.field private mGooglePlusSocialNetworkHandler:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

.field private mLatestLoggedInSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

.field private mTwitterSocialNetworkHandler:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v1, 0x0

    sput-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->sManager:Lcom/biznessapps/common/social/SocialNetworkManager;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->facebook:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_FACEBOOK_NAME:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->twitter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_TWITTER_NAME:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->google_plus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_GOOGLE_PLUS_NAME:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_EMAIL_NAME:Ljava/lang/String;

    .line 62
    return-void

    .line 56
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->initSocialHandler()V

    .line 79
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/biznessapps/common/social/SocialNetworkManager;->sManager:Lcom/biznessapps/common/social/SocialNetworkManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/biznessapps/common/social/SocialNetworkManager;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/common/social/SocialNetworkManager;->sManager:Lcom/biznessapps/common/social/SocialNetworkManager;

    .line 67
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/biznessapps/common/social/SocialNetworkManager;->sManager:Lcom/biznessapps/common/social/SocialNetworkManager;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->setAttachedActivity(Landroid/app/Activity;)V

    .line 70
    :cond_1
    sget-object v0, Lcom/biznessapps/common/social/SocialNetworkManager;->sManager:Lcom/biznessapps/common/social/SocialNetworkManager;

    return-object v0
.end method

.method private initSocialHandler()V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    iget-object v1, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mFacebookSocialNetworkHandler:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    .line 216
    new-instance v0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v1, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mTwitterSocialNetworkHandler:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    .line 220
    new-instance v0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    iget-object v1, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mEmailSocialNetworkHandler:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .line 221
    return-void
.end method

.method public static registerSocialNetworkHandler(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p0, "socialNetworkHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 82
    sget-object v0, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public checkLogin()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin(Z)Z

    move-result v0

    return v0
.end method

.method public checkLogin(Z)Z
    .locals 1
    .param p1, "supportEmail"    # Z

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmailSocialNetworkHandler()Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mEmailSocialNetworkHandler:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    return-object v0
.end method

.method public getFacebookSocialNetworkHandler()Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mFacebookSocialNetworkHandler:Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    return-object v0
.end method

.method public getGooglePlusSocialNetworkHandler()Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mGooglePlusSocialNetworkHandler:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    return-object v0
.end method

.method public getLatestLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLatestLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .locals 2
    .param p1, "supportEmail"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mLatestLoggedInSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 157
    .local v0, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 161
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    .line 165
    :cond_2
    return-object v0
.end method

.method public getLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLoggedInSocialHandler(Z)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .locals 4
    .param p1, "supportEmail"    # Z

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "loggedInSocialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    sget-object v3, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 137
    .local v2, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    .line 141
    :cond_1
    invoke-virtual {v2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    move-object v1, v2

    .line 147
    .end local v2    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_2
    return-object v1
.end method

.method public getSocialNetworkHandler(I)Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .locals 4
    .param p1, "socialType"    # I

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    sget-object v3, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 111
    .local v1, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 112
    move-object v2, v1

    move-object v3, v2

    .line 118
    .end local v1    # "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTwitterSocialNetworkHandler()Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mTwitterSocialNetworkHandler:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    sget-object v2, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 124
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1, p1, p2, p3}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 126
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v2, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 103
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onPause(Landroid/content/Context;)V

    goto :goto_0

    .line 105
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v2, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 97
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onResume(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    return-void
.end method

.method public publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v3, 0x1

    .line 187
    sget-object v2, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 188
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    .line 195
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_1
    return v3
.end method

.method public setAttachedActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    instance-of v2, p1, Landroid/app/Activity;

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 88
    iput-object p1, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mContext:Landroid/content/Context;

    .line 90
    sget-object v2, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 91
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->setAttachedActivtiy(Landroid/app/Activity;)V

    goto :goto_0

    .line 93
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    return-void
.end method

.method public setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    .prologue
    .line 181
    sget-object v2, Lcom/biznessapps/common/social/SocialNetworkManager;->mSocialNetworkHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 182
    .local v1, "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v1, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V

    goto :goto_0

    .line 184
    .end local v1    # "socialNetworkHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    return-void
.end method

.method public updateLoggedInSocialHandler(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/biznessapps/common/social/SocialNetworkManager;->mLatestLoggedInSocialNetworkHandler:Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .line 178
    return-void
.end method

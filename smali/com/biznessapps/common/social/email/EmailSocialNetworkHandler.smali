.class public Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;
.super Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
.source "EmailSocialNetworkHandler.java"


# static fields
.field private static final CHARACTER_LIMIT:I = 0xffff

.field private static final PREFS_KEY_EMAIL_ACCOUNT:Ljava/lang/String; = "email_account"

.field private static sInstance:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    sget-object v1, Lcom/biznessapps/common/social/SocialNetworkManager;->SOCIAL_EMAIL_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method private _login()V
    .locals 6

    .prologue
    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/biznessapps/layout/R$layout;->common_email_login_dialog:I

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 115
    .local v1, "contentView":Landroid/view/ViewGroup;
    sget v4, Lcom/biznessapps/layout/R$id;->tvDescription:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    .local v3, "tvDescription":Landroid/widget/TextView;
    sget v4, Lcom/biznessapps/layout/R$string;->email_login_description:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    sget v4, Lcom/biznessapps/layout/R$id;->etEmail:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 118
    .local v2, "etEmail":Landroid/widget/EditText;
    sget v4, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v5, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$1;-><init>(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    sget v4, Lcom/biznessapps/layout/R$string;->ok:I

    new-instance v5, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;

    invoke-direct {v5, p0, v2}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler$2;-><init>(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 142
    iget-object v4, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    sget v5, Lcom/biznessapps/layout/R$string;->email_login_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getEmailSocialNetworkHandler()Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->setAttachedActivity(Landroid/app/Activity;)V

    .line 45
    sget-object v0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->sInstance:Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;

    return-object v0
.end method


# virtual methods
.method public getCharacterLimit()I
    .locals 1

    .prologue
    .line 53
    const v0, 0xffff

    return v0
.end method

.method public getEmailAccount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    const-string v3, "email_account"

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->getFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "email":Ljava/lang/String;
    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->getEmailAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    sget v1, Lcom/biznessapps/layout/R$string;->anonymous_user:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->getEmailAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 82
    .local v0, "loggedIn":Z
    :goto_0
    return v0

    .line 80
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

    .line 166
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :cond_0
    return v1
.end method

.method public login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->_login()V

    .line 97
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    goto :goto_1
.end method

.method public logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->setEmailAccount(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    invoke-interface {v0, p0}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onLogoffCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onPause(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->onResume(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :cond_0
    return v1
.end method

.method public publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :cond_0
    return v1
.end method

.method public setEmailAccount(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/email/EmailSocialNetworkHandler;->mContext:Landroid/content/Context;

    const-string v2, "email_account"

    invoke-virtual {v0, v1, p1, v2}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-super {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :cond_0
    return v1
.end method

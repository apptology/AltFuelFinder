.class public abstract Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
.super Ljava/lang/Object;
.source "CommonSocialNetworkHandler.java"


# static fields
.field private static final SOCIAL_ACTION_LOGIN:I = 0x0

.field private static final SOCIAL_ACTION_LOGOFF:I = 0x1

.field private static final SOCIAL_ACTION_OTHERS:I = 0x3

.field private static final SOCIAL_ACTION_PUBLISH:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

.field protected mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

.field protected mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

.field protected mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

.field protected mEnableProgressShown:Z

.field protected mLoginoffProgressDialog:Landroid/app/ProgressDialog;

.field protected mOtherProgressDialog:Landroid/app/ProgressDialog;

.field protected mPublishProgressDialog:Landroid/app/ProgressDialog;

.field private mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

.field private mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

.field private mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

.field protected mSocialName:Ljava/lang/String;

.field private mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

.field private mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

.field protected mSocialType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socialType"    # I
    .param p3, "socialName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    .line 283
    new-instance v0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$1;-><init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 314
    new-instance v0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$2;-><init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .line 346
    new-instance v0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$3;-><init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 375
    new-instance v0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler$4;-><init>(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    iput-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .line 42
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialType:I

    .line 44
    iput-object p3, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialName:Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lcom/biznessapps/common/social/SocialNetworkManager;->registerSocialNetworkHandler(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->dismissProgressDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialLoginListener;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p1, "x1"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialStatusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLogoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialLogoutListener;)Lcom/biznessapps/common/social/OnSocialLogoutListener;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p1, "x1"    # Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)Lcom/biznessapps/common/social/OnSocialPublishListener;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p1, "x1"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Lcom/biznessapps/common/social/OnSocialActionCompletedListener;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p1, "x1"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    return-object p1
.end method

.method private createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .param p1, "actionType"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getDialog(I)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0    # "progressDialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 264
    .restart local v0    # "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->setDialog(ILandroid/app/ProgressDialog;)V

    .line 271
    :cond_0
    return-object v0
.end method

.method private dismissProgressDialog(I)V
    .locals 2
    .param p1, "actionType"    # I

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getDialog(I)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 276
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 278
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->setDialog(ILandroid/app/ProgressDialog;)V

    .line 280
    :cond_0
    return-void
.end method

.method private getDialog(I)Landroid/app/ProgressDialog;
    .locals 1
    .param p1, "actionType"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "dialog":Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mLoginoffProgressDialog:Landroid/app/ProgressDialog;

    .line 232
    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mPublishProgressDialog:Landroid/app/ProgressDialog;

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mOtherProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setDialog(ILandroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "actionType"    # I
    .param p2, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iput-object p2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mLoginoffProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 251
    :pswitch_1
    iput-object p2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mPublishProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 254
    :pswitch_2
    iput-object p2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mOtherProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getCharacterLimit()I
.end method

.method public getCurrentRegisteredSocialListener()Lcom/biznessapps/common/social/OnSocialListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 88
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    goto :goto_0

    .line 88
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSocialName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialName:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialType:I

    return v0
.end method

.method public abstract getUserID()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserProfileURL()Ljava/lang/String;
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isLoggedIn()Z
.end method

.method public like(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .line 190
    iget-boolean v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 108
    iget-boolean v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .prologue
    const/4 v0, 0x1

    .line 122
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    .line 124
    iget-boolean v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialLogoutListener:Lcom/biznessapps/common/social/OnSocialLogoutListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialLogoutListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 134
    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 97
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 4
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 171
    iput-object p4, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 173
    iget-boolean v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 139
    iput-object p2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 141
    iget-boolean v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public publishURL(Ljava/net/URL;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "listener"    # Lcom/biznessapps/common/social/OnSocialPublishListener;

    .prologue
    .line 155
    iput-object p2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    .line 157
    iget-boolean v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAttachedActivtiy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V
    .locals 0
    .param p1, "socialStatusChangeListener"    # Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialStatusChangeListener:Lcom/biznessapps/common/social/OnSocialStatusChangeListener;

    .line 69
    return-void
.end method

.method public showProgress(Z)V
    .locals 0
    .param p1, "showProgress"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    .line 65
    return-void
.end method

.method public unlike(Lcom/biznessapps/common/social/OnSocialActionCompletedListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    .line 206
    iget-boolean v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mEnableProgressShown:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->createDialog(ILjava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mDefaultSocialActionCompletedListener:Lcom/biznessapps/common/social/OnSocialActionCompletedListener;

    iget-object v1, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/biznessapps/common/social/OnSocialActionCompletedListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

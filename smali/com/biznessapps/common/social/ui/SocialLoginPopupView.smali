.class public Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
.super Ljava/lang/Object;
.source "SocialLoginPopupView.java"


# instance fields
.field private mActivity:Landroid/content/Context;

.field private mBTChooseAccounts:Landroid/widget/ImageButton;

.field private mLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

.field private mSVAccountsContent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "loginListener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;ZLcom/biznessapps/common/social/OnSocialLoginListener;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;ZLcom/biznessapps/common/social/OnSocialLoginListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "showEmail"    # Z
    .param p4, "loginListener"    # Lcom/biznessapps/common/social/OnSocialLoginListener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mActivity:Landroid/content/Context;

    .line 44
    iput-object p4, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    .line 46
    sget v5, Lcom/biznessapps/layout/R$id;->choose_accounts_content:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mSVAccountsContent:Landroid/view/ViewGroup;

    .line 47
    sget v5, Lcom/biznessapps/layout/R$id;->add_via_facebook_button:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, "addViaFacebook":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->add_via_twitter_button:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 49
    .local v3, "addViaTwitter":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->add_via_google_plus_button:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 50
    .local v2, "addViaGooglePlus":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->add_via_email_button:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    .local v0, "addViaEmail":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->cancel_button:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 52
    .local v4, "cancelAccountsButton":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->choose_login_account:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mBTChooseAccounts:Landroid/widget/ImageButton;

    .line 54
    if-eqz p3, :cond_1

    .line 55
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mBTChooseAccounts:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 61
    iget-object v5, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mBTChooseAccounts:Landroid/widget/ImageButton;

    new-instance v6, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$1;-><init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_0
    new-instance v5, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$2;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$2;-><init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v5, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$3;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$3;-><init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v5, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$4;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$4;-><init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v5, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$5;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$5;-><init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v5, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$6;

    invoke-direct {v5, p0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView$6;-><init>(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v5, Lcom/biznessapps/layout/R$string;->facebook:I

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 103
    sget v5, Lcom/biznessapps/layout/R$string;->twitter:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 104
    sget v5, Lcom/biznessapps/layout/R$string;->google_plus:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 105
    sget v5, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 106
    sget v5, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 107
    sget v5, Lcom/biznessapps/layout/R$id;->choose_account_view:I

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcom/biznessapps/layout/R$string;->choose_login_account:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void

    .line 57
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mSVAccountsContent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialLoginPopupView;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->closeLoginAccountsDialog(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)Lcom/biznessapps/common/social/OnSocialLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/ui/SocialLoginPopupView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method private closeLoginAccountsDialog(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mActivity:Landroid/content/Context;

    sget v2, Lcom/biznessapps/layout/R$anim;->hide_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 125
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v1, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;

    invoke-direct {v1, p1}, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 127
    return-void
.end method

.method private openLoginAccountsDialog(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "rootContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mActivity:Landroid/content/Context;

    sget v2, Lcom/biznessapps/layout/R$anim;->show_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 119
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method


# virtual methods
.method public openLoginDialog()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->mSVAccountsContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginAccountsDialog(Landroid/view/ViewGroup;)V

    .line 113
    return-void
.end method

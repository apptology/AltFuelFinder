.class public Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;
.super Landroid/app/Dialog;
.source "SocialOnBoardingPopupDialog.java"


# instance fields
.field private facebookConnectButton:Landroid/widget/Button;

.field private googleConnectButton:Landroid/widget/Button;

.field private mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

.field private mUiSettings:Lcom/biznessapps/api/UiSettings;

.field private skipButton:Landroid/widget/Button;

.field private twitterConnectButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "holdActivity"    # Lcom/biznessapps/common/activities/CommonFragmentActivity;
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->requestWindowFeature(I)Z

    .line 48
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    .line 49
    iput-object p2, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    .line 51
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->initUI()V

    .line 52
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->registerListener()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)Lcom/biznessapps/common/activities/CommonFragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;
    .param p1, "x1"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->handleConnectionButtonClick(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->unregisterListener()V

    return-void
.end method

.method private applySocialStatus(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Landroid/widget/Button;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "socialConnectButton"    # Landroid/widget/Button;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 211
    invoke-virtual {p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->logout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->connect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleConnectionButtonClick(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 2
    .param p1, "socialNetworkHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 144
    invoke-virtual {p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$5;

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$5;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->login(Lcom/biznessapps/common/social/OnSocialLoginListener;)Z

    .line 154
    :goto_1
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->logout(Lcom/biznessapps/common/social/OnSocialLogoutListener;)Z

    goto :goto_1
.end method

.method private initUI()V
    .locals 12

    .prologue
    .line 60
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    sget v11, Lcom/biznessapps/layout/R$layout;->social_onboarding_layout:I

    invoke-static {v10, v11}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 62
    .local v9, "view":Landroid/view/ViewGroup;
    sget v10, Lcom/biznessapps/layout/R$id;->title_text:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 63
    .local v6, "titleView":Landroid/widget/TextView;
    sget v10, Lcom/biznessapps/layout/R$id;->social_facebook_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 64
    .local v2, "facebookItemContainer":Landroid/view/ViewGroup;
    sget v10, Lcom/biznessapps/layout/R$id;->social_twitter_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 65
    .local v7, "twitterItemContainer":Landroid/view/ViewGroup;
    sget v10, Lcom/biznessapps/layout/R$id;->social_google_container:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 66
    .local v4, "googleItemContainer":Landroid/view/ViewGroup;
    sget v10, Lcom/biznessapps/layout/R$id;->description_text:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "descriptionView":Landroid/widget/TextView;
    sget v10, Lcom/biznessapps/layout/R$id;->facebook_text_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "facebookTextView":Landroid/widget/TextView;
    sget v10, Lcom/biznessapps/layout/R$id;->twitter_text_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 69
    .local v8, "twitterTextView":Landroid/widget/TextView;
    sget v10, Lcom/biznessapps/layout/R$id;->google_text_view:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    .local v5, "googleTextView":Landroid/widget/TextView;
    sget v10, Lcom/biznessapps/layout/R$id;->skip_button:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    .line 71
    sget v10, Lcom/biznessapps/layout/R$id;->facebook_connect:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->facebookConnectButton:Landroid/widget/Button;

    .line 72
    sget v10, Lcom/biznessapps/layout/R$id;->twitter_connect:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->twitterConnectButton:Landroid/widget/Button;

    .line 73
    sget v10, Lcom/biznessapps/layout/R$id;->google_connect:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->googleConnectButton:Landroid/widget/Button;

    .line 74
    sget v10, Lcom/biznessapps/layout/R$id;->skip_button:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    .line 77
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 78
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->isSocialOnBoard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 79
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 85
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 86
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 87
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 88
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 89
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->twitterConnectButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->facebookConnectButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 91
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->googleConnectButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v11}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 92
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v10

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->twitterConnectButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v10

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->facebookConnectButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v10

    iget-object v11, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->googleConnectButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 98
    :cond_0
    sget v10, Lcom/biznessapps/layout/R$string;->social_connect:I

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    .line 99
    sget v10, Lcom/biznessapps/layout/R$string;->social_networks_label:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 100
    sget v10, Lcom/biznessapps/layout/R$string;->facebook:I

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->facebookConnectButton:Landroid/widget/Button;

    sget v11, Lcom/biznessapps/layout/R$string;->connect:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 102
    sget v10, Lcom/biznessapps/layout/R$string;->twitter:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->twitterConnectButton:Landroid/widget/Button;

    sget v11, Lcom/biznessapps/layout/R$string;->connect:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 104
    sget v10, Lcom/biznessapps/layout/R$string;->google_plus:I

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->googleConnectButton:Landroid/widget/Button;

    sget v11, Lcom/biznessapps/layout/R$string;->connect:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    sget v11, Lcom/biznessapps/layout/R$string;->skip:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->facebookConnectButton:Landroid/widget/Button;

    new-instance v11, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$1;

    invoke-direct {v11, p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$1;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->twitterConnectButton:Landroid/widget/Button;

    new-instance v11, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$2;

    invoke-direct {v11, p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$2;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->googleConnectButton:Landroid/widget/Button;

    new-instance v11, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$3;

    invoke-direct {v11, p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$3;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v10, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    new-instance v11, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$4;

    invoke-direct {v11, p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$4;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p0, v9}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->setContentView(Landroid/view/View;)V

    .line 138
    invoke-direct {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->updateUI()V

    .line 139
    return-void
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$6;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V

    .line 184
    new-instance v0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$7;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog$7;-><init>(Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;)V

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 190
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->setOnSocialStatusChangeListener(Lcom/biznessapps/common/social/OnSocialStatusChangeListener;)V

    .line 194
    return-void
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-static {v0}, Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/facebook/FacebookSocialNetworkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->facebookConnectButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->applySocialStatus(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Landroid/widget/Button;)V

    .line 198
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->mActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->twitterConnectButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->applySocialStatus(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Landroid/widget/Button;)V

    .line 201
    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->next:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->skipButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/common/social/ui/SocialOnBoardingPopupDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->skip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class public Lcom/biznessapps/reservation/ReservationLoginFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ReservationLoginFragment.java"


# instance fields
.field private createAccountView:Landroid/widget/TextView;

.field private isCorrectData:Z

.field private loginButton:Landroid/widget/Button;

.field private recoveryTextView:Landroid/widget/TextView;

.field private userEmailText:Landroid/widget/EditText;

.field private userPasswordText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reservation/ReservationLoginFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationLoginFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/reservation/ReservationLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationLoginFragment;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->loadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/reservation/ReservationLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationLoginFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->openRegisterWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/reservation/ReservationLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationLoginFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->openRecoveryWindow()V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/reservation/ReservationLoginFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationLoginFragment$2;-><init>(Lcom/biznessapps/reservation/ReservationLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->createAccountView:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationLoginFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationLoginFragment$3;-><init>(Lcom/biznessapps/reservation/ReservationLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->recoveryTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationLoginFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationLoginFragment$4;-><init>(Lcom/biznessapps/reservation/ReservationLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private openRecoveryWindow()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "tabId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationAccountRecoveryFragment"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationAccountRecoveryFragment"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "TAB_LABEL"

    sget v3, Lcom/biznessapps/layout/R$string;->forgot:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/biznessapps/reservation/ReservationLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method

.method private openRegisterWindow()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationRegisterFragment"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationRegisterFragment"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "TAB_LABEL"

    sget v3, Lcom/biznessapps/layout/R$string;->reservation_register_account_title:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/biznessapps/reservation/ReservationLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_login_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    const-string v0, "appuser_action.php?app_code=%s&action=2&u=%s&p=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userEmailText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userPasswordText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    sget v3, Lcom/biznessapps/layout/R$id;->user_email_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userEmailText:Landroid/widget/EditText;

    .line 67
    sget v3, Lcom/biznessapps/layout/R$id;->user_password_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userPasswordText:Landroid/widget/EditText;

    .line 68
    sget v3, Lcom/biznessapps/layout/R$id;->reservation_login_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;

    .line 69
    sget v3, Lcom/biznessapps/layout/R$id;->recovery_textview:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->recoveryTextView:Landroid/widget/TextView;

    .line 70
    sget v3, Lcom/biznessapps/layout/R$id;->create_account_textview:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->createAccountView:Landroid/widget/TextView;

    .line 71
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userPasswordText:Landroid/widget/EditText;

    new-instance v4, Lcom/biznessapps/reservation/ReservationLoginFragment$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/reservation/ReservationLoginFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationLoginFragment;)V

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 77
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v3}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 78
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "backgroundUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v1

    .line 81
    .local v1, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1, v0, p1, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 83
    .end local v1    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    sget v3, Lcom/biznessapps/layout/R$id;->login_container:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 84
    .local v2, "userPasswContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 85
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->recoveryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->createAccountView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->createAccountView:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->create_account:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userEmailText:Landroid/widget/EditText;

    sget v4, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 92
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->userPasswordText:Landroid/widget/EditText;

    sget v4, Lcom/biznessapps/layout/R$string;->password:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 93
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->login:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->recoveryTextView:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->forgot_your_password:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 95
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 53
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 57
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 42
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->initListeners()V

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->bgUrl:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 116
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseSessionToken(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    .line 117
    .local v0, "data":Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->isCorrectData:Z

    .line 118
    iget-boolean v2, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->isCorrectData:Z

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v1

    .line 120
    .local v1, "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-virtual {v1, v4}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setLoggedIn(Z)V

    .line 121
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setSessionToken(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserEmail(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserFirstName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserLastName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserPhone(Ljava/lang/String;)V

    .line 127
    .end local v1    # "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    :cond_0
    return v4
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-boolean v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment;->isCorrectData:Z

    if-eqz v0, :cond_1

    .line 106
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    sget v0, Lcom/biznessapps/layout/R$string;->wrong_email_or_password:I

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method

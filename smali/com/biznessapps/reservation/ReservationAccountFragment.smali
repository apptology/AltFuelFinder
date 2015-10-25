.class public Lcom/biznessapps/reservation/ReservationAccountFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ReservationAccountFragment.java"


# instance fields
.field private dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

.field private logoutButton:Landroid/widget/Button;

.field private registerButton:Landroid/widget/Button;

.field private token:Ljava/lang/String;

.field private userEmailView:Landroid/widget/EditText;

.field private userFirstNameView:Landroid/widget/EditText;

.field private userLastNameView:Landroid/widget/EditText;

.field private userPasswordConfirmView:Landroid/widget/EditText;

.field private userPasswordView:Landroid/widget/EditText;

.field private userPhoneView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reservation/ReservationAccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationAccountFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/reservation/ReservationAccountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationAccountFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->logout()V

    return-void
.end method

.method private initValues()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->token:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userEmailView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userFirstNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userLastNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPhoneView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->bgUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private logout()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setLoggedIn(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 157
    return-void
.end method

.method private updateProfile()V
    .locals 5

    .prologue
    .line 135
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "passwordConfirm":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 140
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "u"

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "f"

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userFirstNameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v3, "l"

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userLastNameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v3, "c"

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPhoneView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "p"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->loadPostData(Ljava/util/Map;)V

    .line 152
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->password_does_not_match:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_account_register_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    const-string v0, "appuser_action.php?app_code=%s&action=8&tk=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->token:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    sget v1, Lcom/biznessapps/layout/R$id;->user_email_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userEmailView:Landroid/widget/EditText;

    .line 46
    sget v1, Lcom/biznessapps/layout/R$id;->user_first_name_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userFirstNameView:Landroid/widget/EditText;

    .line 47
    sget v1, Lcom/biznessapps/layout/R$id;->user_last_name_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userLastNameView:Landroid/widget/EditText;

    .line 48
    sget v1, Lcom/biznessapps/layout/R$id;->user_phone_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPhoneView:Landroid/widget/EditText;

    .line 49
    sget v1, Lcom/biznessapps/layout/R$id;->user_password_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPasswordView:Landroid/widget/EditText;

    .line 50
    sget v1, Lcom/biznessapps/layout/R$id;->user_password_confirm_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    .line 51
    sget v1, Lcom/biznessapps/layout/R$id;->account_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .local v0, "accountContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 54
    sget v1, Lcom/biznessapps/layout/R$id;->reservation_register_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->registerButton:Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->registerButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->update:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 56
    sget v1, Lcom/biznessapps/layout/R$id;->log_out_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->logoutButton:Landroid/widget/Button;

    .line 57
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->registerButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 58
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->logoutButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->registerButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/reservation/ReservationAccountFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/reservation/ReservationAccountFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationAccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->logoutButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/reservation/ReservationAccountFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/reservation/ReservationAccountFragment$2;-><init>(Lcom/biznessapps/reservation/ReservationAccountFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->initValues()V

    .line 74
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    .line 39
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->hasResultError:Z

    .line 107
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasInvalidTokenError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationUtils;->showInvalidTokenDialog(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->hasResultError:Z

    if-eqz v0, :cond_0

    .line 119
    sget v0, Lcom/biznessapps/layout/R$string;->reservation_update_profile_failed:I

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserEmail(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userFirstNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserFirstName(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userLastNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserLastName(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment;->userPhoneView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserPhone(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

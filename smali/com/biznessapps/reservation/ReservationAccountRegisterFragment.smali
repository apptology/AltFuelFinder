.class public Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ReservationAccountRegisterFragment.java"


# instance fields
.field private isCorrectData:Z

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
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->registerAccount()V

    return-void
.end method

.method private registerAccount()V
    .locals 9

    .prologue
    .line 139
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "password":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "passwordConfirm":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "email":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userFirstNameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "firstName":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userLastNameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "lastName":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPhoneView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "phone":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isCorrectEmail(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 150
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v3

    .line 151
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "u"

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v7, "f"

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v7, "l"

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v7, "c"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v7, "p"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->loadPostData(Ljava/util/Map;)V

    .line 166
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$string;->password_does_not_match:I

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$string;->email_is_not_correct:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_account_register_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string v0, "appuser_action.php?app_code=%s&action=7"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    sget v2, Lcom/biznessapps/layout/R$id;->user_email_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userEmailView:Landroid/widget/EditText;

    .line 46
    sget v2, Lcom/biznessapps/layout/R$id;->user_first_name_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userFirstNameView:Landroid/widget/EditText;

    .line 47
    sget v2, Lcom/biznessapps/layout/R$id;->user_last_name_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userLastNameView:Landroid/widget/EditText;

    .line 48
    sget v2, Lcom/biznessapps/layout/R$id;->user_phone_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPhoneView:Landroid/widget/EditText;

    .line 49
    sget v2, Lcom/biznessapps/layout/R$id;->user_password_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordView:Landroid/widget/EditText;

    .line 50
    sget v2, Lcom/biznessapps/layout/R$id;->user_password_confirm_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    .line 51
    sget v2, Lcom/biznessapps/layout/R$id;->reservation_register_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, "registerButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userEmailView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 54
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userFirstNameView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 55
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userLastNameView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 56
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPhoneView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 57
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 58
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->required:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 60
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userEmailView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 61
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userFirstNameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 62
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userLastNameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 63
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPhoneView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 64
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 65
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 67
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordView:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordView:Landroid/widget/EditText;

    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 70
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->userPasswordConfirmView:Landroid/widget/EditText;

    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 73
    new-instance v2, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v2, Lcom/biznessapps/layout/R$id;->log_out_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, "logoutButton":Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->bgUrl:Ljava/lang/String;

    .line 86
    sget v2, Lcom/biznessapps/layout/R$string;->register:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 87
    sget v2, Lcom/biznessapps/layout/R$string;->logout:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 88
    sget v2, Lcom/biznessapps/layout/R$id;->email_label_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 89
    sget v2, Lcom/biznessapps/layout/R$id;->first_name_label_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->first_name:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    sget v2, Lcom/biznessapps/layout/R$id;->last_name_label_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->last_name:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    sget v2, Lcom/biznessapps/layout/R$id;->phone_label_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->phone:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 92
    sget v2, Lcom/biznessapps/layout/R$id;->password_label_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->password:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 93
    sget v2, Lcom/biznessapps/layout/R$id;->confirm_password_label_view:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
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
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 39
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 113
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseSessionToken(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    .line 114
    .local v0, "data":Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->isCorrectData:Z

    .line 115
    iget-boolean v2, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->isCorrectData:Z

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v1

    .line 117
    .local v1, "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-virtual {v1, v4}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setLoggedIn(Z)V

    .line 118
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setSessionToken(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserEmail(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserFirstName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserLastName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->setUserPhone(Ljava/lang/String;)V

    .line 124
    .end local v1    # "dataKeeper":Lcom/biznessapps/reservation/ReservationDataKeeper;
    :cond_0
    return v4
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 130
    iget-boolean v0, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->isCorrectData:Z

    if-eqz v0, :cond_0

    .line 131
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    sget v0, Lcom/biznessapps/layout/R$string;->error_occured:I

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method

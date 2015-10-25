.class public Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ReservationAccountRecoveryFragment.java"


# instance fields
.field private userEmailView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->recoverPassword()V

    return-void
.end method

.method private recoverPassword()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 99
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "email"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->userEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->loadPostData(Ljava/util/Map;)V

    .line 102
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_account_recovery_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    const-string v0, "appuser_action.php?app_code=%s&action=4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

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
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    sget v2, Lcom/biznessapps/layout/R$id;->user_email_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->userEmailView:Landroid/widget/EditText;

    .line 47
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->userEmailView:Landroid/widget/EditText;

    new-instance v3, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;)V

    invoke-static {v3}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 53
    sget v2, Lcom/biznessapps/layout/R$id;->recovery_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 54
    .local v1, "registerButton":Landroid/widget/Button;
    new-instance v2, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$2;-><init>(Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v2, Lcom/biznessapps/layout/R$id;->account_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    .local v0, "accountContainer":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 63
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->bgUrl:Ljava/lang/String;

    .line 66
    sget v2, Lcom/biznessapps/layout/R$string;->recover_password:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 67
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->userEmailView:Landroid/widget/EditText;

    sget v3, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 68
    sget v2, Lcom/biznessapps/layout/R$id;->recovery_label:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->provide_email:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 30
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 31
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->hasResultError:Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 88
    iget-boolean v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->hasResultError:Z

    if-eqz v0, :cond_0

    .line 89
    sget v0, Lcom/biznessapps/layout/R$string;->reservation_recover_failed:I

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.class public Lcom/biznessapps/fragments/single/ProtectedAppFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ProtectedAppFragment.java"


# instance fields
.field private confirmButton:Landroid/widget/Button;

.field private isCorrectData:Z

.field private passwordView:Landroid/widget/EditText;

.field private usernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/ProtectedAppFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/ProtectedAppFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->confirm()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/ProtectedAppFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/ProtectedAppFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->confirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method private confirm()V
    .locals 5

    .prologue
    .line 120
    iget-object v3, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->usernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->passwordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "password":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 125
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "user"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "pass"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->loadPostData(Ljava/util/Map;)V

    .line 132
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->fill_required_fields_message:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string v0, "app_protect.php?app_code=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 55
    sget v4, Lcom/biznessapps/layout/R$id;->username_edittext:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->usernameView:Landroid/widget/EditText;

    .line 56
    sget v4, Lcom/biznessapps/layout/R$id;->password_edittext:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->passwordView:Landroid/widget/EditText;

    .line 57
    sget v4, Lcom/biznessapps/layout/R$id;->confirm_button:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->confirmButton:Landroid/widget/Button;

    .line 58
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->confirmButton:Landroid/widget/Button;

    new-instance v5, Lcom/biznessapps/fragments/single/ProtectedAppFragment$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment$1;-><init>(Lcom/biznessapps/fragments/single/ProtectedAppFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->usernameView:Landroid/widget/EditText;

    new-instance v5, Lcom/biznessapps/fragments/single/ProtectedAppFragment$2;

    invoke-direct {v5, p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment$2;-><init>(Lcom/biznessapps/fragments/single/ProtectedAppFragment;)V

    invoke-static {v5}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->usernameView:Landroid/widget/EditText;

    sget v5, Lcom/biznessapps/layout/R$string;->username:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 71
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->passwordView:Landroid/widget/EditText;

    sget v5, Lcom/biznessapps/layout/R$string;->password:I

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 72
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->confirmButton:Landroid/widget/Button;

    sget v5, Lcom/biznessapps/layout/R$string;->confirm:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 74
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v2

    .line 75
    .local v2, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getProtectedHeaderColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getProtectedHeaderColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "protectedFieldsColor":I
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->usernameView:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 78
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->usernameView:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 79
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->passwordView:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 80
    iget-object v4, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->passwordView:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 82
    .end local v1    # "protectedFieldsColor":I
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppUiSettings()Lcom/biznessapps/api/UiSettings;

    move-result-object v3

    .line 83
    .local v3, "uiSettings":Lcom/biznessapps/api/UiSettings;
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getSplashImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 85
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getSplashImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p1, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 87
    .end local v0    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    sget v0, Lcom/biznessapps/layout/R$layout;->protected_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->root:Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->initSettingsData()V

    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 39
    iget-object v0, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected showMailingPropmt()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->isCorrectData:Z

    .line 97
    return v1

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 103
    iget-boolean v1, p0, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->isCorrectData:Z

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/layout/MainController;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "IS_LOGED_WITH_PROTECTION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v1, "APPCODE"

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IS_LOGED_WITH_PROTECTION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 117
    .end local v0    # "myIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->wrong_credentials:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/single/ProtectedAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/biznessapps/fragments/single/PreviewAppFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "PreviewAppFragment.java"


# instance fields
.field private appCode:Ljava/lang/String;

.field private clearTextButton:Landroid/widget/Button;

.field private demoCodeView:Landroid/widget/EditText;

.field private keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private loadDemoButton:Landroid/widget/Button;

.field private localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

.field private passwordEditView:Landroid/widget/EditText;

.field private productionButton:Landroid/widget/Button;

.field private resellerId:Ljava/lang/String;

.field private sandboxButton:Landroid/widget/Button;

.field private stagingButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$1;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    .line 65
    new-instance v0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/fragments/single/PreviewAppFragment;Landroid/widget/Button;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->updateButtonsState(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->stagingButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->productionButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/single/PreviewAppFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->setRootBg(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemo()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearText()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/PreviewAppFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->sandboxButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 273
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "password"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadPostData(Ljava/util/Map;)V

    .line 276
    return-void
.end method

.method private clearText()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method private loadAppCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/layout/MainController;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "APPCODE"

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "OPEN_MESSAGE_TAB_PROPERTY"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "OPEN_MESSAGE_TAB_PROPERTY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->startActivity(Landroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 284
    return-void
.end method

.method private loadDemo()V
    .locals 4

    .prologue
    .line 252
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "demoCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "password":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->fill_app_code:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    invoke-direct {p0, v0, v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->checkData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadAppCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRootBg(Z)V
    .locals 3
    .param p1, "useSolidColor"    # Z

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$color;->biz_apps_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->splash_bg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 291
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->preview_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private updateButtonsState(Landroid/widget/Button;)V
    .locals 2
    .param p1, "buttonToSelect"    # Landroid/widget/Button;

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->sandboxButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 245
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->stagingButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 246
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->productionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 249
    return-void
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "checkapp.php"

    return-object v0
.end method

.method public getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearTextButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-object v0
.end method

.method protected handleNoDataEvent(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->wrong_email_or_password:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    sget v6, Lcom/biznessapps/layout/R$id;->demo_code_edittext:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    .line 162
    sget v6, Lcom/biznessapps/layout/R$id;->password_edittext:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    .line 163
    sget v6, Lcom/biznessapps/layout/R$id;->load_demo_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    .line 164
    sget v6, Lcom/biznessapps/layout/R$id;->reset_demo_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearTextButton:Landroid/widget/Button;

    .line 166
    sget v6, Lcom/biznessapps/layout/R$id;->demo_title_textview:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 167
    .local v4, "labelView":Landroid/widget/TextView;
    sget v6, Lcom/biznessapps/layout/R$string;->demo_title:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    sget v7, Lcom/biznessapps/layout/R$string;->load_demo:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 169
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearTextButton:Landroid/widget/Button;

    sget v7, Lcom/biznessapps/layout/R$string;->reset:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 170
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    sget v7, Lcom/biznessapps/layout/R$string;->password:I

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 174
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/localization/StringsSource;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "currentLanguage":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v6, "he"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "iw"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ar"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 180
    :cond_1
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    sget v7, Lcom/biznessapps/layout/R$string;->email:I

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 182
    sget v6, Lcom/biznessapps/layout/R$id;->sandbox_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->sandboxButton:Landroid/widget/Button;

    .line 183
    sget v6, Lcom/biznessapps/layout/R$id;->staging_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->stagingButton:Landroid/widget/Button;

    .line 184
    sget v6, Lcom/biznessapps/layout/R$id;->production_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->productionButton:Landroid/widget/Button;

    .line 185
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadDemoButton:Landroid/widget/Button;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$3;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$3;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->clearTextButton:Landroid/widget/Button;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$4;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$4;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$5;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$5;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-static {v7}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 203
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->passwordEditView:Landroid/widget/EditText;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$6;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$6;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-static {v7}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->sandboxButton:Landroid/widget/Button;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$7;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$7;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->stagingButton:Landroid/widget/Button;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$8;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$8;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v6, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->productionButton:Landroid/widget/Button;

    new-instance v7, Lcom/biznessapps/fragments/single/PreviewAppFragment$9;

    invoke-direct {v7, p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment$9;-><init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    sget v6, Lcom/biznessapps/layout/R$id;->app_version_textview:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    .local v0, "appVersionView":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 236
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 237
    .local v5, "versionName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "versionName":Ljava/lang/String;
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    sget v0, Lcom/biznessapps/layout/R$layout;->preview_changer_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    .line 82
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 84
    const-string v0, "com.biznessapps.layout"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->setRootBg(Z)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->initSettingsData()V

    .line 89
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 90
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->productionButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 91
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->localizationListener:Lcom/biznessapps/localization/StringsSource$LocalizationListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/localization/StringsSource;->addListener(Lcom/biznessapps/localization/StringsSource$LocalizationListener;)V

    .line 92
    iget-object v0, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;Lcom/biznessapps/api/ParseStateEntity;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "parseResult"    # Lcom/biznessapps/api/ParseStateEntity;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "index":I
    const-string v1, "reseller"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 118
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->resellerId:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->resellerId:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->resellerId:Ljava/lang/String;

    .line 124
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/biznessapps/api/ParseStateEntity;->setCorrectState(Z)V

    .line 126
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p2}, Lcom/biznessapps/api/ParseStateEntity;->isCorrectState()Z

    move-result v1

    return v1

    .line 122
    .restart local v0    # "index":I
    :cond_1
    iput-object p1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->appCode:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 147
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->resellerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->resellerId:Ljava/lang/String;

    const-string v4, "RESELLER_ID_KEY"

    invoke-virtual {v1, v2, v3, v4}, Lcom/biznessapps/api/CachingManager;->saveInSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->demoCodeView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "demoCode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadAppCode(Ljava/lang/String;)V

    .line 157
    .end local v0    # "demoCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->appCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment;->appCode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->loadAppCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/biznessapps/qr/QrScannerFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "QrScannerFragment.java"


# static fields
.field private static final SCAN_ACTIVITY_CODE:I = 0x1

.field private static final SCAN_RESULT:Ljava/lang/String; = "SCAN_RESULT"


# instance fields
.field private data:Lcom/biznessapps/common/entities/CommonEntity;

.field private headerContainer:Landroid/view/ViewGroup;

.field private layout:Landroid/view/ViewGroup;

.field private listView:Landroid/widget/ListView;

.field private mSelectedQRCodeItem:Lcom/biznessapps/qr/QRCodeEntity;

.field private scanQrCodeButton:Landroid/widget/Button;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/qr/QrScannerFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/qr/QrScannerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/biznessapps/qr/QrScannerFragment;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/biznessapps/qr/QrScannerFragment;Lcom/biznessapps/qr/QRCodeEntity;)Lcom/biznessapps/qr/QRCodeEntity;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/qr/QrScannerFragment;
    .param p1, "x1"    # Lcom/biznessapps/qr/QRCodeEntity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/biznessapps/qr/QrScannerFragment;->mSelectedQRCodeItem:Lcom/biznessapps/qr/QRCodeEntity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/biznessapps/qr/QrScannerFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/qr/QrScannerFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/qr/QrScannerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/qr/QrScannerFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/qr/QrScannerFragment;->startScanning()V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->scanQrCodeButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/qr/QrScannerFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/qr/QrScannerFragment$3;-><init>(Lcom/biznessapps/qr/QrScannerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 162
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->scan_code_header_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    .line 163
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->scan_code_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->scanQrCodeButton:Landroid/widget/Button;

    .line 164
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->scanQrCodeButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 165
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->history_text:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 166
    .local v1, "historyTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 168
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/qr/QrScannerFragment;->scanQrCodeButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->scan_code_description:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, "scanCodeDescriptionView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->find_qr_code_title:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, "findQrTitleView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$string;->scan_code_description:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 175
    sget v3, Lcom/biznessapps/layout/R$string;->find_qr_code:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->scanQrCodeButton:Landroid/widget/Button;

    sget v4, Lcom/biznessapps/layout/R$string;->scan_qr:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 177
    sget v3, Lcom/biznessapps/layout/R$string;->history:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->layout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 182
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 183
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 184
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;

    .line 185
    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/biznessapps/qr/QrScannerFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 187
    invoke-direct {p0}, Lcom/biznessapps/qr/QrScannerFragment;->loadQrCodes()V

    .line 188
    return-void
.end method

.method private loadQrCodes()V
    .locals 9

    .prologue
    .line 191
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/storage/StorageKeeper;->getQrCodes()Ljava/util/List;

    move-result-object v4

    .line 192
    .local v4, "qrCodes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/qr/QRCodeEntity;>;"
    if-eqz v4, :cond_1

    .line 193
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 196
    .local v6, "size":I
    move v1, v6

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 197
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/qr/QRCodeEntity;

    .line 198
    .local v3, "qrCodeItem":Lcom/biznessapps/qr/QRCodeEntity;
    new-instance v2, Lcom/biznessapps/common/entities/CommonListEntity;

    iget-object v7, v3, Lcom/biznessapps/qr/QRCodeEntity;->string:Ljava/lang/String;

    invoke-direct {v2, v7}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    invoke-virtual {v2, v3}, Lcom/biznessapps/common/entities/CommonListEntity;->setObject(Ljava/lang/Object;)V

    .line 200
    iget-object v7, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v5, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v3    # "qrCodeItem":Lcom/biznessapps/qr/QRCodeEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/common/adapters/SimpleListType1Adapter;

    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/qr/QrScannerFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v7, v5, v8}, Lcom/biznessapps/common/adapters/SimpleListType1Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 204
    .local v0, "adapter":Lcom/biznessapps/common/adapters/SimpleListType1Adapter;
    iget-object v7, p0, Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v7, p0, Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;

    new-instance v8, Lcom/biznessapps/qr/QrScannerFragment$1;

    invoke-direct {v8, p0}, Lcom/biznessapps/qr/QrScannerFragment$1;-><init>(Lcom/biznessapps/qr/QrScannerFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    iget-object v7, p0, Lcom/biznessapps/qr/QrScannerFragment;->listView:Landroid/widget/ListView;

    new-instance v8, Lcom/biznessapps/qr/QrScannerFragment$2;

    invoke-direct {v8, p0}, Lcom/biznessapps/qr/QrScannerFragment$2;-><init>(Lcom/biznessapps/qr/QrScannerFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 226
    .end local v0    # "adapter":Lcom/biznessapps/common/adapters/SimpleListType1Adapter;
    .end local v1    # "i":I
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    .end local v6    # "size":I
    :cond_1
    return-void
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 4
    .param p1, "webData"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_1
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/biznessapps/qr/QrScannerFragment;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startScanning()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/camera/scanning/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/qr/QrScannerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QR_SCANNER_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/qr/QrScannerFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonEntity;

    iput-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->data:Lcom/biznessapps/common/entities/CommonEntity;

    .line 141
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->data:Lcom/biznessapps/common/entities/CommonEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->data:Lcom/biznessapps/common/entities/CommonEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->data:Lcom/biznessapps/common/entities/CommonEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const-string v0, "qr_reader.php?app_code=%s&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/qr/QrScannerFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->layout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->initAdsWithAlpha()V

    .line 120
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 76
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "qrCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/storage/StorageKeeper;->saveQrCode(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/biznessapps/qr/QrScannerFragment;->loadQrCodes()V

    .line 81
    invoke-direct {p0, v0}, Lcom/biznessapps/qr/QrScannerFragment;->openWebView(Ljava/lang/String;)V

    .line 84
    .end local v0    # "qrCode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 97
    sget v0, Lcom/biznessapps/layout/R$id;->action_delete_list_item:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/qr/QrScannerFragment;->mSelectedQRCodeItem:Lcom/biznessapps/qr/QRCodeEntity;

    iget-object v1, v1, Lcom/biznessapps/qr/QRCodeEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/storage/StorageKeeper;->deleteQrCode(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/biznessapps/qr/QrScannerFragment;->loadQrCodes()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$menu;->common_delete_list_item_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    sget v0, Lcom/biznessapps/layout/R$string;->delete:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/qr/QrScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    sget v0, Lcom/biznessapps/layout/R$layout;->qr_scanner_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->initSettingsData()V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/qr/QrScannerFragment;->setHasOptionsMenu(Z)V

    .line 63
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->scan_code_root_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->layout:Landroid/view/ViewGroup;

    .line 64
    invoke-direct {p0}, Lcom/biznessapps/qr/QrScannerFragment;->initViews()V

    .line 65
    invoke-direct {p0}, Lcom/biznessapps/qr/QrScannerFragment;->initListeners()V

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->loadData()V

    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->openCustomDialogs()V

    .line 70
    iget-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->tabId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseCommonData(Ljava/lang/String;)Lcom/biznessapps/common/entities/CommonEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/qr/QrScannerFragment;->data:Lcom/biznessapps/common/entities/CommonEntity;

    .line 125
    invoke-virtual {p0}, Lcom/biznessapps/qr/QrScannerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QR_SCANNER_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/qr/QrScannerFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/qr/QrScannerFragment;->data:Lcom/biznessapps/common/entities/CommonEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

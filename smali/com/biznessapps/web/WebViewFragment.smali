.class public Lcom/biznessapps/web/WebViewFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "WebViewFragment.java"


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field private static final IMAGE_BROWSER:Ljava/lang/String; = "Image Browser"


# instance fields
.field private customAppCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private historyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private onBackPressedListenerForHtml5:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private progressBar:Landroid/view/View;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private webData:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customAppCodes:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "http://cevadesign.ro/magic.html"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "http://cevadesign.ro/magic-fm.html"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "youtube.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "http://snd.sc/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "soundcloud.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, ".mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "m3u"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "vimeo.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "peaceloveworld.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "benswann.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "graymere.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "agcanada.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "onrealm.org"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "friendamo.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "https://www.zeetequila.com/products"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    const-string v1, "https://www.zeetequila.com/products"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->customAppCodes:Ljava/util/List;

    const-string v1, "saintjoseph"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/biznessapps/web/WebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/web/WebViewFragment$1;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .line 136
    new-instance v0, Lcom/biznessapps/web/WebViewFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/web/WebViewFragment$2;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->onBackPressedListenerForHtml5:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/web/WebViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/web/WebViewFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/web/WebViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/biznessapps/web/WebViewFragment;->loadContent()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/web/WebViewFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/web/WebViewFragment;->downloadDropboxFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/web/WebViewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/biznessapps/web/WebViewFragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/biznessapps/web/WebViewFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/biznessapps/web/WebViewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/web/WebViewFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    return-object v0
.end method

.method private downloadDropboxFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Lcom/biznessapps/utils/HardwareUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "download"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    .line 442
    .local v5, "manager":Landroid/app/DownloadManager;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/biznessapps/utils/HardwareUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .local v1, "destinationDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 444
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 446
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 449
    .local v7, "source":Landroid/net/Uri;
    new-instance v6, Landroid/app/DownloadManager$Request;

    invoke-direct {v6, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 452
    .local v6, "request":Landroid/app/DownloadManager$Request;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 453
    .local v2, "destinationFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 454
    .local v0, "counter":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 455
    add-int/lit8 v0, v0, 0x1

    .line 456
    const/4 v8, 0x0

    const/16 v9, 0x2e

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "filenameBegin":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "filenameEnd":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "destinationFile":Ljava/io/File;
    const-string v8, "%s(%d).%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    .restart local v2    # "destinationFile":Ljava/io/File;
    goto :goto_0

    .line 460
    .end local v3    # "filenameBegin":Ljava/lang/String;
    .end local v4    # "filenameEnd":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 462
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 464
    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 467
    .end local v0    # "counter":I
    .end local v1    # "destinationDir":Ljava/io/File;
    .end local v2    # "destinationFile":Ljava/io/File;
    .end local v5    # "manager":Landroid/app/DownloadManager;
    .end local v6    # "request":Landroid/app/DownloadManager$Request;
    .end local v7    # "source":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private initControls(Landroid/view/ViewGroup;)V
    .locals 12
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    .line 198
    sget v9, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    .line 199
    sget v9, Lcom/biznessapps/layout/R$id;->webview_back_button:I

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 200
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v9, Lcom/biznessapps/web/WebViewFragment$3;

    invoke-direct {v9, p0}, Lcom/biznessapps/web/WebViewFragment$3;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v9

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v10, Lcom/biznessapps/web/WebViewFragment$4;

    invoke-direct {v10, p0}, Lcom/biznessapps/web/WebViewFragment$4;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "WEB_DATA"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v9

    if-nez v9, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/biznessapps/utils/ViewUtils;->showNetwortErrorToast(Landroid/app/Activity;)V

    .line 413
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "URL"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 221
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->progressBar:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "USE_NATIVE_BROWSER"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 223
    .local v6, "useNativeBrowser":Z
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "URL"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    .line 225
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v10, Lcom/biznessapps/web/WebViewFragment$5;

    invoke-direct {v10, p0}, Lcom/biznessapps/web/WebViewFragment$5;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 323
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "SHOW_WEB_ORIGINAL_SIZE"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "wufoo.com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 324
    :cond_1
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v9}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 328
    :goto_1
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v10, Lcom/biznessapps/web/WebViewFragment$6;

    invoke-direct {v10, p0}, Lcom/biznessapps/web/WebViewFragment$6;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 353
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/biznessapps/web/WebViewFragment;->isOpenInNativeBrowser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v6, :cond_5

    .line 355
    :cond_2
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "youtube.com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "//www"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    .line 358
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v3, "externalIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v3}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 361
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto/16 :goto_0

    .line 326
    .end local v3    # "externalIntent":Landroid/content/Intent;
    :cond_4
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v9}, Lcom/biznessapps/utils/ViewUtils;->plubWebViewWithoutZooming(Landroid/webkit/WebView;)V

    goto :goto_1

    .line 363
    :cond_5
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "rtsp://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 364
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    iget-object v10, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v11, "rtsp://"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "correctedUrl":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 405
    .end local v1    # "correctedUrl":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_7
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, ".pdf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "dropbox"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://docs.google.com/gview?embedded%3Dtrue&url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    goto :goto_2

    .line 370
    :cond_8
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "youtube"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "v="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 371
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, "v="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 372
    .local v4, "indexOfVideoId":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    .line 373
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "videoId":Ljava/lang/String;
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v7, "videoClient":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://youtube.com/watch?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v7}, Lcom/biznessapps/web/WebViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v7    # "videoClient":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto/16 :goto_0

    .line 379
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 386
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "indexOfVideoId":I
    .end local v8    # "videoId":Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    const-string v10, ".pls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 387
    new-instance v9, Lcom/biznessapps/web/WebViewFragment$7;

    invoke-direct {v9, p0}, Lcom/biznessapps/web/WebViewFragment$7;-><init>(Lcom/biznessapps/web/WebViewFragment;)V

    new-array v10, v11, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/biznessapps/web/WebViewFragment$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 406
    .end local v6    # "useNativeBrowser":Z
    :cond_a
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 407
    iget-object v9, p0, Lcom/biznessapps/web/WebViewFragment;->historyUrls:Ljava/util/List;

    iget-object v10, p0, Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-direct {p0}, Lcom/biznessapps/web/WebViewFragment;->loadContent()V

    goto/16 :goto_0

    .line 410
    :cond_b
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v10}, Lcom/biznessapps/web/WebViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto/16 :goto_0
.end method

.method private isOpenInNativeBrowser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "inputUrl"    # Ljava/lang/String;
    .param p2, "appCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 417
    iget-object v4, p0, Lcom/biznessapps/web/WebViewFragment;->customUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 422
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/web/WebViewFragment;->customAppCodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 427
    .end local v1    # "item":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadContent()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 433
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/biznessapps/web/WebViewFragment;->webData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 146
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/biznessapps/web/WebViewFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 151
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/web/WebViewFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 152
    iput-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 149
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    sget v0, Lcom/biznessapps/layout/R$layout;->webview_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->root:Landroid/view/ViewGroup;

    .line 160
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->initSettingsData()V

    .line 161
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->progressBar:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->root:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 165
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/web/WebViewFragment;->initControls(Landroid/view/ViewGroup;)V

    .line 167
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->onBackPressedListenerForHtml5:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 174
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->openCustomDialogs()V

    .line 175
    iget-object v0, p0, Lcom/biznessapps/web/WebViewFragment;->root:Landroid/view/ViewGroup;

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/biznessapps/web/WebViewFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 190
    .local v0, "activity":Lcom/biznessapps/common/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->onBackPressedListenerForHtml5:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 192
    iget-object v1, p0, Lcom/biznessapps/web/WebViewFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onDestroy()V

    .line 195
    return-void
.end method

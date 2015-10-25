.class public Lcom/biznessapps/widgets/SmartWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SmartWebViewClient.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# static fields
.field private static final NEW_TAB_PATTERN:Ljava/lang/String; = "?newtab=yes"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStartedCalled:Z

.field private mShouldOverrideCalled:Z

.field private mWebView:Lcom/biznessapps/widgets/SmartWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biznessapps/widgets/SmartWebView;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "webView"    # Lcom/biznessapps/widgets/SmartWebView;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    .line 27
    iput-boolean v1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mPageStartedCalled:Z

    .line 28
    iput-boolean v1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mShouldOverrideCalled:Z

    .line 32
    iput-object p1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mWebView:Lcom/biznessapps/widgets/SmartWebView;

    .line 34
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBack()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    iput-boolean v1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mPageStartedCalled:Z

    .line 133
    iput-boolean v1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mShouldOverrideCalled:Z

    .line 135
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "about:blank"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mWebView:Lcom/biznessapps/widgets/SmartWebView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/SmartWebView;->loadInitialData()V

    move v0, v1

    .line 144
    goto :goto_0

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 40
    iput-boolean v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mPageStartedCalled:Z

    .line 41
    iput-boolean v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mShouldOverrideCalled:Z

    .line 43
    const-string v0, "javascript: var allLinks = document.getElementsByTagName(\'a\'); if (allLinks) {var i;for (i=0; i<allLinks.length; i++) {var link = allLinks[i];var target = link.getAttribute(\'target\'); if (target && target == \'_blank\') {link.setAttribute(\'target\',\'_self\');link.href = link.href + \'?newtab=yes\';}}}"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 50
    iget-boolean v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mPageStartedCalled:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    iget-object v1, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mHistory:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mPageStartedCalled:Z

    .line 58
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 62
    iput-boolean v5, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mShouldOverrideCalled:Z

    .line 64
    if-nez p2, :cond_0

    .line 119
    :goto_0
    return v4

    .line 68
    :cond_0
    const-string v6, "?newtab=yes"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "?newtab=yes"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 72
    goto :goto_0

    .line 73
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v6, ".pdf"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://docs.google.com/gview?embedded%3Dtrue&url="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/widgets/SmartWebViewClient;->subUrlTrigger(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 117
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 75
    :cond_3
    const-string v6, "youtube.com"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "vimeo.com"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 76
    :cond_4
    const-string v4, "//www"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "externalIntent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 82
    goto/16 :goto_0

    .line 83
    .end local v1    # "externalIntent":Landroid/content/Intent;
    :cond_6
    const-string v6, "mailto:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 84
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v3

    .line 85
    .local v3, "mt":Landroid/net/MailTo;
    iget-object v6, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v4, v8}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 86
    goto/16 :goto_0

    .line 87
    .end local v3    # "mt":Landroid/net/MailTo;
    :cond_7
    const-string v4, "maps://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 89
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "maps://"

    const-string v6, "http://"

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 93
    goto/16 :goto_0

    .line 94
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    move v4, v5

    .line 95
    goto/16 :goto_0

    .line 97
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 99
    :try_start_1
    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 100
    goto/16 :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/biznessapps/layout/R$string;->phone_call_not_available:I

    invoke-static {v4, v6}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    move v4, v5

    .line 103
    goto/16 :goto_0

    .line 105
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_9
    const-string v4, "market://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "intent://"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    :cond_a
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object v4, p0, Lcom/biznessapps/widgets/SmartWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v5

    .line 110
    goto/16 :goto_0

    .line 111
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move v4, v5

    .line 112
    goto/16 :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_b
    move v4, v5

    .line 119
    goto/16 :goto_0
.end method

.method protected subUrlTrigger(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

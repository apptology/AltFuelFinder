.class public Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;
.super Landroid/app/Activity;
.source "ThreeDSecureWebViewActivity.java"


# annotations
.annotation build Lcom/braintreepayments/api/annotations/Beta;
.end annotation


# static fields
.field public static final EXTRA_THREE_D_SECURE_LOOKUP:Ljava/lang/String; = "com.braintreepayments.api.EXTRA_THREE_D_SECURE_LOOKUP"

.field public static final EXTRA_THREE_D_SECURE_RESULT:Ljava/lang/String; = "com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mThreeDSecureWebViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupActionBar()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mActionBar:Landroid/app/ActionBar;

    .line 113
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected finishWithResult(Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;)V
    .locals 3
    .param p1, "threeDSecureAuthenticationResponse"    # Lcom/braintreepayments/api/models/ThreeDSecureAuthenticationResponse;

    .prologue
    .line 85
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->finish()V

    .line 89
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;

    invoke-virtual {v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;

    invoke-virtual {v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->goBack()V

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->popCurrentWebView()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.braintreepayments.api.EXTRA_THREE_D_SECURE_LOOKUP"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    .line 46
    .local v3, "threeDSecureLookup":Lcom/braintreepayments/api/models/ThreeDSecureLookup;
    if-nez v3, :cond_0

    .line 47
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A ThreeDSecureLookup must be specified with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/braintreepayments/api/models/ThreeDSecureLookup;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".EXTRA_THREE_D_SECURE_LOOKUP extra"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setupActionBar()V

    .line 53
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    .line 54
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 56
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "PaReq"

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getPareq()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "MD"

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getMd()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "TermUrl"

    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getTermUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v1, "encodedParams":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    new-instance v4, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;

    invoke-direct {v4, p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, "webView":Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;
    invoke-virtual {v4, p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->init(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;)V

    .line 69
    invoke-virtual {v3}, Lcom/braintreepayments/api/models/ThreeDSecureLookup;->getAcsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;->postUrl(Ljava/lang/String;[B)V

    .line 70
    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->pushNewWebView(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;)V

    .line 71
    return-void

    .line 63
    .end local v4    # "webView":Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->finish()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected popCurrentWebView()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->pushNewWebView(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;)V

    .line 82
    return-void
.end method

.method protected pushNewWebView(Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mThreeDSecureWebViews:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method protected setActionBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/braintreepayments/api/threedsecure/ThreeDSecureWebViewActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

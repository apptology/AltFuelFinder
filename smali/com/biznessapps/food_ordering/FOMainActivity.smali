.class public Lcom/biznessapps/food_ordering/FOMainActivity;
.super Lcom/biznessapps/common/activities/SingleFragmentActivity;
.source "FOMainActivity.java"


# instance fields
.field private CLIENT_TOKEN_FORMAT_REQUEST:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;-><init>()V

    .line 21
    const-string v0, "braintree/food_payments.php?action=generateCustomerId&app_id=%s&tab_id=%s"

    iput-object v0, p0, Lcom/biznessapps/food_ordering/FOMainActivity;->CLIENT_TOKEN_FORMAT_REQUEST:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/FOMainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/FOMainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/biznessapps/food_ordering/FOMainActivity;->initBraintreeAndTest(Ljava/lang/String;)V

    return-void
.end method

.method private getClientToken()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 30
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/FOMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_SPECIAL_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "tabId":Ljava/lang/String;
    new-instance v1, Lcom/biznessapps/food_ordering/FOMainActivity$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/FOMainActivity$1;-><init>(Lcom/biznessapps/food_ordering/FOMainActivity;)V

    .line 45
    .local v1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/biznessapps/food_ordering/FOMainActivity;->CLIENT_TOKEN_FORMAT_REQUEST:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3, v1, v7}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;Z)V

    .line 47
    return-void
.end method

.method private initBraintreeAndTest(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/biznessapps/food_ordering/FOMainActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/biznessapps/food_ordering/FOMainActivity$2;-><init>(Lcom/biznessapps/food_ordering/FOMainActivity;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/braintreepayments/api/Braintree;->setup(Landroid/content/Context;Ljava/lang/String;Lcom/braintreepayments/api/Braintree$BraintreeSetupFinishedListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->onResume()V

    .line 26
    invoke-direct {p0}, Lcom/biznessapps/food_ordering/FOMainActivity;->getClientToken()V

    .line 27
    return-void
.end method

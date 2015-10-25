.class public Lcom/biznessapps/common/activities/SingleFragmentActivity;
.super Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;
.source "SingleFragmentActivity.java"


# instance fields
.field private singleFragment:Lcom/biznessapps/common/fragments/CommonFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;-><init>()V

    return-void
.end method

.method private getFragmentAndLoad()V
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/api/AppFragmentManager;->getFragmentByController(Landroid/content/Intent;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/fragments/CommonFragment;

    iput-object v2, p0, Lcom/biznessapps/common/activities/SingleFragmentActivity;->singleFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    .line 46
    iget-object v2, p0, Lcom/biznessapps/common/activities/SingleFragmentActivity;->singleFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    instance-of v2, v2, Lcom/biznessapps/podcasts/PodcastsListFragment;

    if-eqz v2, :cond_0

    .line 47
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/biznessapps/common/activities/SingleFragmentActivity;->hasPodcastTab:Z

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 51
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 53
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/biznessapps/common/activities/SingleFragmentActivity;->singleFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/fragments/CommonFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    sget v2, Lcom/biznessapps/layout/R$id;->fragment_root:I

    iget-object v3, p0, Lcom/biznessapps/common/activities/SingleFragmentActivity;->singleFragment:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 56
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/biznessapps/layout/R$layout;->single_fragment_layout:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/biznessapps/common/activities/CommonShareableFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 29
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/layout/MainController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "restartAppIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->finish()V

    .line 35
    .end local v0    # "restartAppIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/common/activities/SingleFragmentActivity;->getFragmentAndLoad()V

    .line 36
    return-void
.end method

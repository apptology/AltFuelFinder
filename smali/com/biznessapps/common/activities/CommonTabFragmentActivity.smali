.class public abstract Lcom/biznessapps/common/activities/CommonTabFragmentActivity;
.super Lcom/biznessapps/common/activities/CommonFragmentActivity;
.source "CommonTabFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/common/activities/CommonTabFragmentActivity$ScreenPagerAdapter;
    }
.end annotation


# static fields
.field protected static final CHANGE_FRAGMENT_EVENT:I = 0x2

.field protected static final CHANGE_TAB_EVENT:I = 0x1

.field protected static final FIRST_INDEX:I = 0x0

.field protected static final FIRST_LOAD_TAB_INDEX:I = 0x0

.field protected static final FRAGMENT_SWITCHING_DELAY_TIME:I = 0x1388

.field protected static final STARTUP_DELAY_TIME:I = 0xbb8

.field protected static final TAB_SWITCHING_DELAY_TIME:I = 0x64


# instance fields
.field protected tabFragmentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected tabViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method protected afterViewsInitialization()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/biznessapps/common/entities/AnalyticEntity;

    invoke-direct {v0}, Lcom/biznessapps/common/entities/AnalyticEntity;-><init>()V

    .line 75
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    .line 76
    .local v1, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setContext(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getGaAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAccountId(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setAppId(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/entities/AnalyticEntity;->setTabId(Ljava/lang/String;)V

    .line 80
    return-object v0
.end method

.method protected initViews()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected isLandscapeMode()Z
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected loadTabFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->onResume()V

    .line 57
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppSettings;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/layout/MainController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "restartAppIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->finish()V

    .line 66
    .end local v0    # "restartAppIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->loadTabFragments()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->tabFragmentsList:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->initViews()V

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/common/activities/CommonTabFragmentActivity;->afterViewsInitialization()V

    goto :goto_0
.end method

.method protected sendChangeTabMessage(ILandroid/os/Handler;I)V
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eventId"    # I

    .prologue
    .line 101
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    return-void
.end method

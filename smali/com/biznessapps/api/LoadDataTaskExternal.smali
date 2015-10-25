.class public Lcom/biznessapps/api/LoadDataTaskExternal;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "LoadDataTaskExternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/UnModalAsyncTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/biznessapps/common/entities/NetworkResultEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCORRECT_STATE_MESSAGE:Ljava/lang/String; = "Incorrect state: check url and runnables"


# instance fields
.field private canUseCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private loadingTime:J

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private preDataLoadingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

.field private requestUrl:Ljava/lang/String;

.field private updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 43
    return-void
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->requestUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incorrect state: check url and runnables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/Map;)Lcom/biznessapps/common/entities/NetworkResultEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/biznessapps/common/entities/NetworkResultEntity;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/util/Map;, "[Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 97
    new-instance v2, Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-direct {v2}, Lcom/biznessapps/common/entities/NetworkResultEntity;-><init>()V

    .line 98
    .local v2, "result":Lcom/biznessapps/common/entities/NetworkResultEntity;
    const/4 v0, 0x0

    .line 99
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->requestUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, p1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v3, v0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->setDataToParse(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v3}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->run()V

    .line 103
    iget-object v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v3}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->isCorrectData()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyResponse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    .local v1, "isCorrectData":Z
    :goto_0
    invoke-virtual {v2, v1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setHasCorrectData(Z)V

    .line 105
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->getBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setBackground(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 107
    iget-object v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v3}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->run()V

    .line 109
    :cond_0
    return-object v2

    .line 103
    .end local v1    # "isCorrectData":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, [Ljava/util/Map;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/LoadDataTaskExternal;->doInBackground([Ljava/util/Map;)Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public launch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal;->checkState()V

    .line 71
    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    .line 73
    .local v0, "holdActivity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 74
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->preDataLoadingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->preDataLoadingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v2, v0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->setActivity(Landroid/app/Activity;)V

    .line 76
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->preDataLoadingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->run()V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->canUseCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->canUseCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->run()V

    .line 80
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->canUseCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->canUseCaching()Z

    move-result v1

    .line 81
    .local v1, "useCaching":Z
    if-eqz v1, :cond_2

    .line 82
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v2, v0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->setActivity(Landroid/app/Activity;)V

    .line 83
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v2}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->run()V

    .line 93
    .end local v1    # "useCaching":Z
    :cond_1
    :goto_0
    return-void

    .line 85
    .restart local v1    # "useCaching":Z
    :cond_2
    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->params:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    iget-object v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->params:Ljava/util/Map;

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 88
    :cond_3
    new-array v2, v4, [Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/biznessapps/api/LoadDataTaskExternal;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/biznessapps/common/entities/NetworkResultEntity;)V
    .locals 5
    .param p1, "result"    # Lcom/biznessapps/common/entities/NetworkResultEntity;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/biznessapps/api/UnModalAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/biznessapps/api/LoadingDataInterface;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/biznessapps/api/LoadingDataInterface;

    invoke-interface {v1}, Lcom/biznessapps/api/LoadingDataInterface;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/biznessapps/api/BackgroundInterface;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/biznessapps/api/BackgroundInterface;

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->getBackground()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/biznessapps/api/BackgroundInterface;->setBgUrl(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/biznessapps/api/BackgroundInterface;

    invoke-interface {v1}, Lcom/biznessapps/api/BackgroundInterface;->applyBackground()V

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasCorrectData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    iget-object v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->setActivity(Landroid/app/Activity;)V

    .line 135
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    invoke-virtual {v1}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;->run()V

    .line 137
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->loadingTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->loadingTime:J

    .line 139
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->loadingTime:J

    invoke-static {v1, v0, v2, v3}, Lcom/biznessapps/utils/CommonUtils;->sendTimingEvent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 152
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->showNetwortErrorToast(Landroid/app/Activity;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->showNoDataToast(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/biznessapps/common/entities/NetworkResultEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/api/LoadDataTaskExternal;->onPostExecute(Lcom/biznessapps/common/entities/NetworkResultEntity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->onPreExecute()V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->loadingTime:J

    .line 118
    return-void
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/api/LoadingDataInterface;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/api/LoadingDataInterface;

    invoke-interface {v0}, Lcom/biznessapps/api/LoadingDataInterface;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setCanUseCachingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V
    .locals 0
    .param p1, "canUseCachingRunnable"    # Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->canUseCachingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 63
    return-void
.end method

.method public setHandleInBgRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V
    .locals 0
    .param p1, "handleInBgRunnable"    # Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->handleInBgRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 55
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->params:Ljava/util/Map;

    .line 170
    return-void
.end method

.method public setParseDataRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V
    .locals 0
    .param p1, "parseDataRunnable"    # Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->parseDataRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 51
    return-void
.end method

.method public setPreDataLoadingRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V
    .locals 0
    .param p1, "preDataLoadingRunnable"    # Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->preDataLoadingRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 59
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->requestUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUpdateControlsRunnable(Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;)V
    .locals 0
    .param p1, "updateControlsRunnable"    # Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/api/LoadDataTaskExternal;->updateControlsRunnable:Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;

    .line 67
    return-void
.end method

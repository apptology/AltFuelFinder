.class Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "CommonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
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


# instance fields
.field private loadingTime:J

.field final synthetic this$0:Lcom/biznessapps/common/fragments/CommonFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/fragments/CommonFragment;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
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
    .line 434
    .local p3, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    iput-object p1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    .line 435
    invoke-direct {p0, p2, p3}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 436
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/Map;)Lcom/biznessapps/common/entities/NetworkResultEntity;
    .locals 7
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

    .line 440
    new-instance v3, Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-direct {v3}, Lcom/biznessapps/common/entities/NetworkResultEntity;-><init>()V

    .line 441
    .local v3, "result":Lcom/biznessapps/common/entities/NetworkResultEntity;
    iget-object v5, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v5}, Lcom/biznessapps/common/fragments/CommonFragment;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v6}, Lcom/biznessapps/common/fragments/CommonFragment;->addOffsetIfNeeded()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v5

    invoke-virtual {v5, v4, v1, p1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v2, Lcom/biznessapps/api/ParseStateEntity;

    invoke-direct {v2}, Lcom/biznessapps/api/ParseStateEntity;-><init>()V

    .line 447
    .local v2, "parseState":Lcom/biznessapps/api/ParseStateEntity;
    iget-object v5, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v5, v0, v2}, Lcom/biznessapps/common/fragments/CommonFragment;->tryParseData(Ljava/lang/String;Lcom/biznessapps/api/ParseStateEntity;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyResponse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 449
    .local v1, "isCorrectData":Z
    :goto_0
    invoke-virtual {v2}, Lcom/biznessapps/api/ParseStateEntity;->isCorrectState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    const/4 v1, 0x1

    .line 452
    :cond_0
    invoke-virtual {v3, v1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setHasCorrectData(Z)V

    .line 453
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->getBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setBackground(Ljava/lang/String;)V

    .line 454
    iget-object v5, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 455
    iget-object v5, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v5}, Lcom/biznessapps/common/fragments/CommonFragment;->handleInBackground()V

    .line 457
    :cond_1
    return-object v3

    .line 447
    .end local v1    # "isCorrectData":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 429
    check-cast p1, [Ljava/util/Map;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->doInBackground([Ljava/util/Map;)Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/biznessapps/common/entities/NetworkResultEntity;)V
    .locals 5
    .param p1, "result"    # Lcom/biznessapps/common/entities/NetworkResultEntity;

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/biznessapps/api/UnModalAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 473
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->getBackground()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/biznessapps/common/fragments/CommonFragment;->bgUrl:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    invoke-virtual {v1}, Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasCorrectData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->loadingTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->loadingTime:J

    .line 481
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->loadingTime:J

    invoke-static {v1, v0, v2, v3}, Lcom/biznessapps/utils/CommonUtils;->sendTimingEvent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 493
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 486
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/fragments/CommonFragment;->onError(Landroid/app/Activity;)V

    goto :goto_0

    .line 488
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->this$0:Lcom/biznessapps/common/fragments/CommonFragment;

    iget-object v2, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/fragments/CommonFragment;->handleNoDataEvent(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 429
    check-cast p1, Lcom/biznessapps/common/entities/NetworkResultEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->onPostExecute(Lcom/biznessapps/common/entities/NetworkResultEntity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->onPreExecute()V

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->loadingTime:J

    .line 464
    return-void
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/fragments/CommonFragment$LoadDataTask;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 500
    :cond_0
    return-void
.end method

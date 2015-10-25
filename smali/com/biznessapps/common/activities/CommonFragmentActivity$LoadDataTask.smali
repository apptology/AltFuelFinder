.class Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "CommonFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/activities/CommonFragmentActivity;
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

.field final synthetic this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/biznessapps/common/activities/CommonFragmentActivity;Landroid/app/Activity;Ljava/util/List;)V
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
    .line 306
    .local p3, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    iput-object p1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    .line 307
    invoke-direct {p0, p2, p3}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 308
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

    .line 312
    new-instance v2, Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-direct {v2}, Lcom/biznessapps/common/entities/NetworkResultEntity;-><init>()V

    .line 313
    .local v2, "result":Lcom/biznessapps/common/entities/NetworkResultEntity;
    iget-object v4, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 315
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v4

    invoke-virtual {v4, v3, v1, p1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;Z[Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v4, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v4, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->tryParseData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmptyResponse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    .local v1, "isCorrectData":Z
    :goto_0
    invoke-virtual {v2, v1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setHasCorrectData(Z)V

    .line 319
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->getBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/biznessapps/common/entities/NetworkResultEntity;->setBackground(Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 321
    iget-object v4, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->handleInBackground()V

    .line 323
    :cond_0
    return-object v2

    .line 317
    .end local v1    # "isCorrectData":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, [Ljava/util/Map;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->doInBackground([Ljava/util/Map;)Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/biznessapps/common/entities/NetworkResultEntity;)V
    .locals 5
    .param p1, "result"    # Lcom/biznessapps/common/entities/NetworkResultEntity;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/biznessapps/api/UnModalAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 338
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->getBackground()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->applyBackground(Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/common/entities/NetworkResultEntity;->hasCorrectData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->this$0:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->updateControlsWithData(Landroid/app/Activity;)V

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->loadingTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->loadingTime:J

    .line 345
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->loadingTime:J

    invoke-static {v1, v0, v2, v3}, Lcom/biznessapps/utils/CommonUtils;->sendTimingEvent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 354
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->isAnyConnectionAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->showNetwortErrorToast(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, Lcom/biznessapps/common/entities/NetworkResultEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->onPostExecute(Lcom/biznessapps/common/entities/NetworkResultEntity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/biznessapps/api/UnModalAsyncTask;->onPreExecute()V

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->loadingTime:J

    .line 330
    return-void
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonFragmentActivity$LoadDataTask;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 361
    :cond_0
    return-void
.end method

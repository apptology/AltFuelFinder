.class Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "HomeScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/news/SearchEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;


# direct methods
.method private constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Lcom/biznessapps/home_screen/HomeScreenActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/home_screen/HomeScreenActivity;
    .param p2, "x1"    # Lcom/biznessapps/home_screen/HomeScreenActivity$1;

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 577
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;
    invoke-static {v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/entities/AppSettings;->getNewsTabId()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "newsTabId":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NewsViewController"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/news/NewsSettings;

    .line 585
    .local v2, "newsSettings":Lcom/biznessapps/news/NewsSettings;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/biznessapps/news/NewsSettings;->getTwitterSearchList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/biznessapps/news/NewsSettings;->getGoogleSearchList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 587
    :cond_0
    const-string v5, "news.php?app_code=%s&tab_id=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v8}, Lcom/biznessapps/home_screen/HomeScreenActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "newsData":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->getNewsSettings(Ljava/lang/String;)Lcom/biznessapps/news/NewsSettings;

    move-result-object v2

    .line 590
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NewsViewController"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 592
    .end local v1    # "newsData":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_3

    .line 593
    invoke-virtual {v2}, Lcom/biznessapps/news/NewsSettings;->getGoogleSearchList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 594
    invoke-virtual {v2}, Lcom/biznessapps/news/NewsSettings;->getGoogleSearchList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    :cond_2
    invoke-virtual {v2}, Lcom/biznessapps/news/NewsSettings;->getTwitterSearchList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 597
    invoke-virtual {v2}, Lcom/biznessapps/news/NewsSettings;->getTwitterSearchList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    :cond_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 577
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/news/SearchEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/news/SearchEntity;>;"
    const/4 v8, 0x0

    .line 605
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 606
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 607
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    sget v6, Lcom/biznessapps/layout/R$id;->news_feed_container:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 608
    .local v2, "newsFeedContainer":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    sget v6, Lcom/biznessapps/layout/R$id;->news_feed_icon:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 609
    .local v3, "newsFeedIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const-string v6, "NewsViewController"

    # invokes: Lcom/biznessapps/home_screen/HomeScreenActivity;->getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    invoke-static {v5, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1300(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const-string v6, "NewsViewController"

    # invokes: Lcom/biznessapps/home_screen/HomeScreenActivity;->getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    invoke-static {v5, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1300(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    sget v6, Lcom/biznessapps/layout/R$id;->news_feed_view:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 612
    .local v4, "newsFeedView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1400(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    .line 613
    .local v0, "buttonBgColor":I
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1500(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v1

    .line 614
    .local v1, "buttonTextColor":I
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 615
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 616
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 618
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    new-instance v6, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;

    iget-object v7, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v7}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1, v4}, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1;-><init>(Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;Landroid/os/Looper;Ljava/util/List;Landroid/widget/TextView;)V

    # setter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->newsFeedHandler:Landroid/os/Handler;
    invoke-static {v5, v6}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1602(Lcom/biznessapps/home_screen/HomeScreenActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 643
    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const/4 v6, 0x1

    # invokes: Lcom/biznessapps/home_screen/HomeScreenActivity;->sendMessageToHandler(II)V
    invoke-static {v5, v6, v8}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1800(Lcom/biznessapps/home_screen/HomeScreenActivity;II)V

    .line 645
    .end local v0    # "buttonBgColor":I
    .end local v1    # "buttonTextColor":I
    .end local v2    # "newsFeedContainer":Landroid/view/ViewGroup;
    .end local v3    # "newsFeedIcon":Landroid/widget/ImageView;
    .end local v4    # "newsFeedView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

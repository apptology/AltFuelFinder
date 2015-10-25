.class final Lcom/biznessapps/events/EventGoingTabUtils$1;
.super Landroid/os/AsyncTask;
.source "EventGoingTabUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/events/EventGoingTabUtils;->loadGoingData(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;ZLandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/fan_wall/CommentEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$goingView:Landroid/widget/TextView;

.field final synthetic val$isUpcomingEvent:Z

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$peopleGoing:Landroid/widget/TextView;

.field final synthetic val$settings:Lcom/biznessapps/api/UiSettings;

.field final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/CachingManager;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/ListView;ZLandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    iput-object p2, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$eventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$tabId:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$settings:Lcom/biznessapps/api/UiSettings;

    iput-object p5, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$appContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$listView:Landroid/widget/ListView;

    iput-boolean p7, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$isUpcomingEvent:Z

    iput-object p8, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$peopleGoing:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$goingView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventGoingTabUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-string v3, "going_list.php?app_code=%s&id=%s&tab_id=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$eventId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$tabId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "goingListUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "goingListData":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/json/JsonParser;->parseFanComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/events/EventGoingTabUtils$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fan_wall/CommentEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "numberOfComments":I
    if-eqz p1, :cond_2

    .line 53
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 54
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 55
    .local v2, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    invoke-virtual {v2}, Lcom/biznessapps/fan_wall/CommentEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    sget v6, Lcom/biznessapps/layout/R$drawable;->portrait:I

    invoke-virtual {v2, v6}, Lcom/biznessapps/fan_wall/CommentEntity;->setImageId(I)V

    .line 57
    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v2    # "item":Lcom/biznessapps/fan_wall/CommentEntity;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 61
    new-instance v0, Lcom/biznessapps/events/EventCommentsAdapter;

    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$appContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v6, v10, v5, v7}, Lcom/biznessapps/events/EventCommentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 62
    .local v0, "adapter":Lcom/biznessapps/events/EventCommentsAdapter;
    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    .end local v0    # "adapter":Lcom/biznessapps/events/EventCommentsAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fan_wall/CommentEntity;>;"
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$isUpcomingEvent:Z

    if-eqz v6, :cond_4

    sget v6, Lcom/biznessapps/layout/R$string;->people_going:I

    :goto_1
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "peopleGoingFormat":Ljava/lang/String;
    const-string v6, "%d"

    const-string v7, "%s"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 69
    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$peopleGoing:Landroid/widget/TextView;

    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$goingView:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 71
    iget-object v6, p0, Lcom/biznessapps/events/EventGoingTabUtils$1;->val$goingView:Landroid/widget/TextView;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_3
    return-void

    .line 64
    .end local v4    # "peopleGoingFormat":Ljava/lang/String;
    :cond_4
    sget v6, Lcom/biznessapps/layout/R$string;->people_went:I

    goto :goto_1
.end method

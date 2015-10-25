.class Lcom/biznessapps/reservation/ReservationBookFragment$4$1;
.super Landroid/os/AsyncTask;
.source "ReservationBookFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/reservation/entities/ReservationTimeItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment$4;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationTimeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 277
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v7, v7, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v7}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 278
    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2500()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    aget-object v2, v7, v8

    .line 279
    .local v2, "dayString":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v7, v7, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v7}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "dateString":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v7, v7, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-static {v7}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getUserEmail()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "userId":Ljava/lang/String;
    const-string v7, "reserv_item_time.php?app_code=%s&tab_id=%s&id=%s&day=%s&date=%s&user_id=%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v10, v10, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-virtual {v10}, Lcom/biznessapps/reservation/ReservationBookFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v10, v10, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;
    invoke-static {v10}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2600(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v10, v10, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    invoke-static {v10}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v1, v8, v9

    const/4 v9, 0x5

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "url":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "jsonData":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/json/JsonParser;->parseReservationTimeData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationTimeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 292
    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v6, v6, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-virtual {v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 293
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 294
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 295
    .local v5, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    .line 296
    .local v3, "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v6, v6, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v3    # "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    :cond_0
    new-instance v1, Lcom/biznessapps/reservation/ReservationTimeAdapter;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v7, v7, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v7}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2800(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v7

    invoke-direct {v1, v6, v5, v7}, Lcom/biznessapps/reservation/ReservationTimeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 299
    .local v1, "adapter":Lcom/biznessapps/reservation/ReservationTimeAdapter;
    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v6, v6, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/view/ViewGroup;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 300
    .local v4, "listView":Landroid/widget/ListView;
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    new-instance v6, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;

    invoke-direct {v6, p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment$4$1;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    .end local v1    # "adapter":Lcom/biznessapps/reservation/ReservationTimeAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "listView":Landroid/widget/ListView;
    .end local v5    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationTimeItem;>;"
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 269
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    return-void
.end method

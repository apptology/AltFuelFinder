.class Lcom/biznessapps/reservation/ReservationBookFragment$3$1;
.super Landroid/os/AsyncTask;
.source "ReservationBookFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment$3;->onClick(Landroid/view/View;)V
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
        "Lcom/biznessapps/reservation/entities/ReservationServiceItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment$3;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationServiceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const-string v2, "reserv_items.php?app_code=%s&tab_id=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v5, v5, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v5, v5, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1400(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "jsonData":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/json/JsonParser;->parseReservationServiceData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/entities/ReservationServiceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationServiceItem;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v5, v5, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    .line 214
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 215
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 216
    .local v4, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationServiceItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    .line 217
    .local v3, "item":Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v5, v5, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1500(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v3    # "item":Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    :cond_0
    new-instance v1, Lcom/biznessapps/reservation/ReservationServiceAdapter;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v5, v5, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1600(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    invoke-direct {v1, v0, v4, v5}, Lcom/biznessapps/reservation/ReservationServiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 220
    .local v1, "ex":Lcom/biznessapps/reservation/ReservationServiceAdapter;
    new-instance v5, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;

    invoke-direct {v5, p0, v0}, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment$3$1;Landroid/app/Activity;)V

    invoke-virtual {v1, v5}, Lcom/biznessapps/reservation/ReservationServiceAdapter;->setListener(Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;)V

    .line 233
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v5, v5, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1000(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    .end local v1    # "ex":Lcom/biznessapps/reservation/ReservationServiceAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationServiceItem;>;"
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1000(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    return-void
.end method

.class Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;
.super Landroid/os/AsyncTask;
.source "ReservationMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reservation/ReservationMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/biznessapps/reservation/ReservationDataKeeper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationMainFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/reservation/ReservationMainFragment;Lcom/biznessapps/reservation/ReservationMainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/reservation/ReservationMainFragment;
    .param p2, "x1"    # Lcom/biznessapps/reservation/ReservationMainFragment$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;-><init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/biznessapps/reservation/ReservationDataKeeper;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 354
    invoke-static {}, Lcom/biznessapps/api/DataSource;->getInstance()Lcom/biznessapps/api/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationMainFragment;->getReservationCenterUrl()Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$1000(Lcom/biznessapps/reservation/ReservationMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/DataSource;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "jsonData":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$1100(Lcom/biznessapps/reservation/ReservationMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/utils/json/JsonParser;->parseReservationCenterData(Lcom/biznessapps/reservation/ReservationDataKeeper;Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 350
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->doInBackground([Ljava/lang/Void;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/biznessapps/reservation/ReservationDataKeeper;)V
    .locals 1
    .param p1, "data"    # Lcom/biznessapps/reservation/ReservationDataKeeper;

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 361
    invoke-virtual {p1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getNetworkResult()Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/NetworkResultEntity;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationMainFragment;->loadImages()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$1200(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    .line 364
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 350
    check-cast p1, Lcom/biznessapps/reservation/ReservationDataKeeper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationMainFragment$LoadBackgroundTask;->onPostExecute(Lcom/biznessapps/reservation/ReservationDataKeeper;)V

    return-void
.end method

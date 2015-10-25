.class Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;
.super Lcom/biznessapps/api/UnModalAsyncTask;
.source "ChooseLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAddressesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/UnModalAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/location/entities/LocationEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/app/Activity;Ljava/util/List;)V
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
    .line 256
    .local p3, "refOfViews":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    .line 257
    invoke-direct {p0, p2, p3}, Lcom/biznessapps/api/UnModalAsyncTask;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 258
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "locationName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v2, "geocoder":Landroid/location/Geocoder;
    const/4 v0, 0x0

    .line 265
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getConvertedAddresses(Ljava/util/List;)Ljava/util/List;
    invoke-static {v3, v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$800(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 279
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->plugListView(Landroid/app/Activity;Ljava/util/List;)V
    invoke-static {v0, v1, p1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$900(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/app/Activity;Ljava/util/List;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->handleNoDataEvent(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$1000(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected placeProgressBar()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$LoadAddressesTask;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    :cond_0
    return-void
.end method

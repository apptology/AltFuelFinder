.class Lcom/biznessapps/car_finder/CarFinderActivity$1;
.super Ljava/lang/Object;
.source "CarFinderActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/car_finder/CarFinderActivity;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 3

    .prologue
    .line 202
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-virtual {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->map_item_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 208
    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->markersHashMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$000(Lcom/biznessapps/car_finder/CarFinderActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/MapEntity;

    .line 209
    .local v1, "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->view:Landroid/view/View;

    sget v4, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/MapEntity;->getGeneralInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    instance-of v3, v1, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;

    .end local v1    # "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    invoke-virtual {v1}, Lcom/biznessapps/car_finder/CarFinderActivity$CarFinderItem;->isCarItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->view:Landroid/view/View;

    sget v4, Lcom/biznessapps/layout/R$id;->description_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    .local v0, "descriptionView":Landroid/widget/TextView;
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # getter for: Lcom/biznessapps/car_finder/CarFinderActivity;->carSetTime:J
    invoke-static {v4}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$100(Lcom/biznessapps/car_finder/CarFinderActivity;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    .end local v0    # "descriptionView":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/car_finder/CarFinderActivity$1;->view:Landroid/view/View;

    return-object v3
.end method

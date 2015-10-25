.class Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;
.super Ljava/lang/Object;
.source "LocationsMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V
    .locals 3

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->fo_map_item_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 7
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 71
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->markersHashMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->access$000(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/entities/MapEntity;

    .line 72
    .local v2, "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->view:Landroid/view/View;

    sget v6, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, "titleView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->view:Landroid/view/View;

    sget v6, Lcom/biznessapps/layout/R$id;->description_view:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "descriptionView":Landroid/widget/TextView;
    instance-of v5, v2, Lcom/biznessapps/location/entities/LocationEntity;

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 75
    check-cast v5, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-static {v4, v0, v5}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 76
    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    .end local v2    # "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->isActiveStatus()Z

    move-result v1

    .line 77
    .local v1, "isActive":Z
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v5}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_1

    sget v5, Lcom/biznessapps/layout/R$string;->open_now:I

    :goto_0
    invoke-static {v6, v5}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    .end local v1    # "isActive":Z
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$1;->view:Landroid/view/View;

    return-object v5

    .line 77
    .restart local v1    # "isActive":Z
    :cond_1
    sget v5, Lcom/biznessapps/layout/R$string;->closed_now:I

    goto :goto_0
.end method

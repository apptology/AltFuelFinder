.class Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$4;
.super Ljava/lang/Object;
.source "LocationsMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->markersHashMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->access$300(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/MapEntity;

    .line 130
    .local v0, "mapItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v1, v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.class Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$4;
.super Ljava/lang/Object;
.source "ChooseLocationFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$600(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/MapEntity;

    .line 176
    .local v0, "mapItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$4;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # invokes: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->showAddressInfo(Lcom/biznessapps/common/entities/MapEntity;)V
    invoke-static {v1, v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$700(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 177
    return-void
.end method

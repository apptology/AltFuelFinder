.class Lcom/biznessapps/real_estate/RealEstateListActivity$1;
.super Ljava/lang/Object;
.source "RealEstateListActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateListActivity;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateListActivity;)V
    .locals 3

    .prologue
    .line 126
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-virtual {v0}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->real_estate_map_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 5
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 132
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateListActivity;->markersHashMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->access$000(Lcom/biznessapps/real_estate/RealEstateListActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/common/entities/MapEntity;

    .line 133
    .local v2, "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    instance-of v3, v2, Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->view:Landroid/view/View;

    sget v4, Lcom/biznessapps/layout/R$id;->address_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "addressText":Landroid/widget/TextView;
    move-object v3, v2

    .line 135
    check-cast v3, Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAddressInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->view:Landroid/view/View;

    sget v4, Lcom/biznessapps/layout/R$id;->distance_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    .local v1, "distanceText":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->this$0:Lcom/biznessapps/real_estate/RealEstateListActivity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 139
    .end local v0    # "addressText":Landroid/widget/TextView;
    .end local v1    # "distanceText":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListActivity$1;->view:Landroid/view/View;

    return-object v3
.end method

.class Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;
.super Ljava/lang/Object;
.source "ChooseLocationFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)V
    .locals 3

    .prologue
    .line 191
    iput-object p1, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->fo_location_chooser_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;->this$0:Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;

    # getter for: Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->markersHashMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;->access$600(Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/MapEntity;

    .line 198
    .local v1, "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;->view:Landroid/view/View;

    sget v3, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    .local v0, "addressView":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/MapEntity;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/ChooseLocationFragment$5;->view:Landroid/view/View;

    return-object v2
.end method

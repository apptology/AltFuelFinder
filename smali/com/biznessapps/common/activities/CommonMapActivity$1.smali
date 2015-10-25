.class Lcom/biznessapps/common/activities/CommonMapActivity$1;
.super Ljava/lang/Object;
.source "CommonMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/activities/CommonMapActivity;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/activities/CommonMapActivity;)V
    .locals 3

    .prologue
    .line 281
    iput-object p1, p0, Lcom/biznessapps/common/activities/CommonMapActivity$1;->this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iget-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity$1;->this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonMapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->map_item_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/common/activities/CommonMapActivity$1;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 287
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity$1;->this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

    iget-object v2, v2, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/MapEntity;

    .line 288
    .local v0, "poiItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity$1;->view:Landroid/view/View;

    sget v3, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, "titleView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/MapEntity;->getGeneralInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lcom/biznessapps/common/activities/CommonMapActivity$1;->view:Landroid/view/View;

    return-object v2
.end method

.class Lcom/biznessapps/around_us/AroundUsActivity$1;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/around_us/AroundUsActivity;->getInfoAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/around_us/AroundUsActivity;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/biznessapps/around_us/AroundUsActivity;)V
    .locals 3

    .prologue
    .line 130
    iput-object p1, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-virtual {v0}, Lcom/biznessapps/around_us/AroundUsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->around_map_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->hideInfoWindow()V

    .line 172
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 174
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 10
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 136
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->markersHashMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/biznessapps/around_us/AroundUsActivity;->access$000(Lcom/biznessapps/around_us/AroundUsActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/common/entities/MapEntity;

    .line 137
    .local v4, "item":Lcom/biznessapps/common/entities/MapEntity;
    instance-of v7, v4, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    if-eqz v7, :cond_1

    move-object v5, v4

    .line 138
    check-cast v5, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;

    .line 140
    .local v5, "poiItem":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->isCurrentLocoation()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-virtual {v7}, Lcom/biznessapps/around_us/AroundUsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$layout;->map_item_dialog:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "currLocationView":Landroid/view/View;
    sget v7, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 143
    .local v6, "titleView":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getGeneralInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v2    # "currLocationView":Landroid/view/View;
    .end local v5    # "poiItem":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :goto_0
    return-object v2

    .line 146
    .restart local v5    # "poiItem":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    :cond_0
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->view:Landroid/view/View;

    sget v8, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 147
    .restart local v6    # "titleView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u200e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->view:Landroid/view/View;

    sget v8, Lcom/biznessapps/layout/R$id;->address_view:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    .local v0, "addressView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u200e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getLocation()Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/location/entities/LocationEntity;->getAddress1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->view:Landroid/view/View;

    sget v8, Lcom/biznessapps/layout/R$id;->distance_view:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, "distanceText":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    invoke-virtual {v7}, Lcom/biznessapps/around_us/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 152
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->view:Landroid/view/View;

    sget v8, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 153
    .local v1, "avatarView":Landroid/widget/ImageView;
    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "aroundus.png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 154
    iget-object v7, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->this$0:Lcom/biznessapps/around_us/AroundUsActivity;

    # getter for: Lcom/biznessapps/around_us/AroundUsActivity;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-static {v7}, Lcom/biznessapps/around_us/AroundUsActivity;->access$100(Lcom/biznessapps/around_us/AroundUsActivity;)Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/biznessapps/around_us/AroundUsActivity$1$1;

    invoke-direct {v9, p0, p1}, Lcom/biznessapps/around_us/AroundUsActivity$1$1;-><init>(Lcom/biznessapps/around_us/AroundUsActivity$1;Lcom/google/android/gms/maps/model/Marker;)V

    invoke-virtual {v7, v8, v1, v9}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 165
    .end local v0    # "addressView":Landroid/widget/TextView;
    .end local v1    # "avatarView":Landroid/widget/ImageView;
    .end local v3    # "distanceText":Landroid/widget/TextView;
    .end local v5    # "poiItem":Lcom/biznessapps/around_us/AroundUsEntity$PoiItem;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/around_us/AroundUsActivity$1;->view:Landroid/view/View;

    goto/16 :goto_0
.end method

.class public Lcom/biznessapps/reservation/ReservationLocationAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ReservationLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reservation/ReservationLocationAdapter$1;,
        Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/location/entities/LocationEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_location_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 28
    if-nez p2, :cond_1

    .line 29
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationLocationAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/reservation/ReservationLocationAdapter;->layoutItemResourceId:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;

    invoke-direct {v0, v7}, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;-><init>(Lcom/biznessapps/reservation/ReservationLocationAdapter$1;)V

    .line 32
    .local v0, "holder":Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;
    sget v5, Lcom/biznessapps/layout/R$id;->location_name_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 33
    sget v5, Lcom/biznessapps/layout/R$id;->location_distance:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    .line 34
    sget v5, Lcom/biznessapps/layout/R$id;->location_place_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->placeView:Landroid/widget/TextView;

    .line 35
    sget v5, Lcom/biznessapps/layout/R$id;->icon_image:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationLocationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    .line 42
    .local v2, "item":Lcom/biznessapps/location/entities/LocationEntity;
    if-eqz v2, :cond_0

    .line 43
    iget-object v5, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->placeView:Landroid/widget/TextView;

    invoke-static {v5, v6, v2}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 44
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "latitude":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "longitude":Ljava/lang/String;
    :goto_2
    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getStaticMapUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "iconUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationLocationAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    iget-object v6, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1, v6}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationLocationAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-static {v5, v6, v2}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 50
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/reservation/ReservationLocationAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getItemTextColor()I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/widget/TextView;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;->placeView:Landroid/widget/TextView;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/reservation/ReservationLocationAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 55
    .end local v1    # "iconUrl":Ljava/lang/String;
    .end local v3    # "latitude":Ljava/lang/String;
    .end local v4    # "longitude":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 38
    .end local v0    # "holder":Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;
    .end local v2    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/reservation/ReservationLocationAdapter$ViewHolder;
    goto :goto_0

    .line 44
    .restart local v2    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_2
    const-string v3, "0"

    goto :goto_1

    .line 45
    .restart local v3    # "latitude":Ljava/lang/String;
    :cond_3
    const-string v4, "0"

    goto :goto_2
.end method

.class public Lcom/biznessapps/food_ordering/locations/LocationAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "LocationAdapter.java"


# annotations
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
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_location_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    if-nez p2, :cond_1

    .line 29
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->layoutItemResourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;-><init>()V

    .line 32
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;
    sget v3, Lcom/biznessapps/layout/R$id;->location_city_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->setTextViewCity(Landroid/widget/TextView;)V

    .line 33
    sget v3, Lcom/biznessapps/layout/R$id;->location_address_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->setTextViewAddress(Landroid/widget/TextView;)V

    .line 34
    sget v3, Lcom/biznessapps/layout/R$id;->location_status_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->setStatusView(Landroid/widget/TextView;)V

    .line 35
    sget v3, Lcom/biznessapps/layout/R$id;->right_arrow_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->setRightArrowView(Landroid/widget/ImageView;)V

    .line 36
    sget v3, Lcom/biznessapps/layout/R$id;->distance_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->setDistanceView(Landroid/widget/TextView;)V

    .line 38
    sget v3, Lcom/biznessapps/layout/R$id;->location_ping:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 39
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getRightArrowView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/location/entities/LocationEntity;

    .line 47
    .local v2, "item":Lcom/biznessapps/location/entities/LocationEntity;
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getTextViewCity()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getTextViewAddress()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 49
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getStatusView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->isActiveStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/biznessapps/layout/R$string;->open_now:I

    :goto_1
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getDistanceView()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 53
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->isActiveStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getStatusView()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    :goto_2
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getItemTextColor()I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getTextViewCity()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getTextViewAddress()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getDistanceView()Landroid/widget/TextView;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/food_ordering/locations/LocationAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 65
    :cond_0
    return-object p2

    .line 43
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;
    .end local v2    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;
    goto :goto_0

    .line 49
    .restart local v2    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_2
    sget v3, Lcom/biznessapps/layout/R$string;->closed_now:I

    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->getStatusView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getItemTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.class public Lcom/biznessapps/real_estate/RealEstateListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "RealEstateListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/real_estate/RealEstateListAdapter$1;,
        Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/real_estate/RealEstateEntity;",
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
            "Lcom/biznessapps/real_estate/RealEstateEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/real_estate/RealEstateEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->real_estate_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 29
    if-nez p2, :cond_2

    .line 30
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/real_estate/RealEstateListAdapter;->layoutItemResourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;-><init>(Lcom/biznessapps/real_estate/RealEstateListAdapter$1;)V

    .line 34
    .local v0, "holder":Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;
    sget v3, Lcom/biznessapps/layout/R$id;->address_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    .line 35
    sget v3, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 36
    sget v3, Lcom/biznessapps/layout/R$id;->bedroom_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->bedroomView:Landroid/widget/TextView;

    .line 37
    sget v3, Lcom/biznessapps/layout/R$id;->shower_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->showerView:Landroid/widget/TextView;

    .line 38
    sget v3, Lcom/biznessapps/layout/R$id;->distance_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    .line 39
    sget v3, Lcom/biznessapps/layout/R$id;->image_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/real_estate/RealEstateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 49
    .local v1, "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    if-eqz v1, :cond_1

    .line 50
    iget-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAddressInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v3

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 53
    iget-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPriceUnit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_1
    iget-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->bedroomView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBeds()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->showerView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBaths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstateListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-static {v3, v4, v1}, Lcom/biznessapps/location/LocationUtils;->setDistanceValue(Landroid/content/Context;Landroid/widget/TextView;Lcom/biznessapps/common/entities/MapEntity;)V

    .line 60
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->hasColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getItemColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/real_estate/RealEstateListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "leftDrawableIndex":I
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getItemTextColor()I

    move-result v3

    iget-object v4, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->bedroomView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getItemTextColor()I

    move-result v3

    iget-object v4, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getItemTextColor()I

    move-result v3

    iget-object v4, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->showerView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getItemTextColor()I

    move-result v3

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->bedroomView:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->showerView:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstateListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 72
    .end local v2    # "leftDrawableIndex":I
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstateListAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 74
    :cond_1
    return-object p2

    .line 44
    .end local v0    # "holder":Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 55
    .restart local v1    # "item":Lcom/biznessapps/real_estate/RealEstateEntity;
    :cond_3
    iget-object v3, v0, Lcom/biznessapps/real_estate/RealEstateListAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->n_a:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

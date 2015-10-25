.class public Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "RealEstatePropertyDetailFragment.java"


# instance fields
.field private item:Lcom/biznessapps/real_estate/RealEstateEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method private checkOnCorrectness()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEM_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/real_estate/RealEstateEntity;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    .line 57
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v7, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/widgets/RefreshableListView;

    .line 128
    .local v4, "listView":Lcom/biznessapps/widgets/RefreshableListView;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    .local v3, "itemValue":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v7

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "locValue":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 138
    move-object v5, v3

    .line 140
    :cond_2
    new-instance v2, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-direct {v2, v5}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    iget-object v7, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v6, v7}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    .end local v2    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    .end local v3    # "itemValue":Ljava/lang/String;
    .end local v5    # "locValue":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v7}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v7

    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v7, v8}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 146
    new-instance v0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v7, v6, v8}, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 147
    .local v0, "adapter":Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;
    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    goto :goto_0
.end method

.method private initSections()V
    .locals 5

    .prologue
    .line 68
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->rooms_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .local v2, "propertyContainer":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 70
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getRooms()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 71
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->heating_fuel_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getHeatingFuel()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 72
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->roof_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getRoof()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 73
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->outdoor_amenities_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getOutdoorAmenities()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "architecturalStyle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getArchitecturalStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getArchitecturalStyle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->architectural_style_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 79
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->appliances_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getAppliances()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "basement":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBasement()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBasement()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->basement_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 85
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->exterior_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getExterior()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 86
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->parking_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getParking()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 87
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->floor_covering_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getFloorCovering()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 88
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->building_amenities_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBuildingAmenities()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 89
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->heating_type_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getHeatingTypes()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 90
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->cooling_type_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getCoolingTypes()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 91
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->indoor_features_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getIndoorFeature()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 92
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->view_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v4}, Lcom/biznessapps/real_estate/RealEstateEntity;->getView()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->customizeContainer(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 94
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->rooms_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_rooms:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->heating_fuel_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_heating_fuel:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->roof_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_roof:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->outdoor_amenities_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_outdoor_amenities:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->architectural_style_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_architectural_style:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->appliances_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_appliances:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->basement_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_basement:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->exterior_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_exterior:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->parking_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_parking:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->floor_covering_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_floor_covering:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->building_amenities_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_building_amenities:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->heating_type_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_heating_type:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->cooling_type_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_cooling_type:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->indoor_features_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_indoor_features:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->view_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/biznessapps/layout/R$string;->real_estate_view:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 124
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->initSections()V

    .line 62
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v0}, Lcom/biznessapps/real_estate/RealEstateEntity;->hasAdditionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->no_additional_info:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected loadBgUrl()V
    .locals 5

    .prologue
    .line 45
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->root_layout:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "containerForBg":Landroid/view/View;
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v3}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 47
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBackground()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->item:Lcom/biznessapps/real_estate/RealEstateEntity;

    invoke-virtual {v3}, Lcom/biznessapps/real_estate/RealEstateEntity;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v2

    .line 51
    .local v2, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2, v0, v1, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 53
    .end local v0    # "bgUrl":Ljava/lang/String;
    .end local v2    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    sget v0, Lcom/biznessapps/layout/R$layout;->real_estate_property_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    .line 32
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->checkOnCorrectness()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->initSettingsData()V

    .line 36
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->loadBgUrl()V

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->initViews()V

    .line 38
    invoke-virtual {p0}, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 39
    iget-object v0, p0, Lcom/biznessapps/real_estate/RealEstatePropertyDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

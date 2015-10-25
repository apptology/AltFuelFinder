.class public Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "CategoryItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$1;,
        Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
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
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_category_item_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    if-nez p2, :cond_2

    .line 30
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;->layoutItemResourceId:I

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;

    invoke-direct {v1, v9}, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$1;)V

    .line 33
    .local v1, "holder":Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;
    sget v4, Lcom/biznessapps/layout/R$id;->thumbnail_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 34
    sget v4, Lcom/biznessapps/layout/R$id;->name_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 35
    sget v4, Lcom/biznessapps/layout/R$id;->description_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 36
    sget v4, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 44
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    iget-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v7

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v6

    .line 49
    .local v0, "hasImage":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 50
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 51
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v4, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v3, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 53
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 55
    invoke-virtual {v3, v10}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 56
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v4, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 58
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_0
    iget-object v7, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->hasColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getItemColor()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getItemTextColor()I

    move-result v4

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/widget/TextView;

    iget-object v8, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    aput-object v8, v7, v5

    iget-object v5, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    aput-object v5, v7, v6

    iget-object v5, v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    aput-object v5, v7, v10

    invoke-virtual {p0, v4, v7}, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 64
    :cond_1
    return-object p2

    .line 39
    .end local v0    # "hasImage":Z
    .end local v1    # "holder":Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/biznessapps/food_ordering/categories/CategoryItemAdapter$ViewHolder;
    goto/16 :goto_0

    .restart local v2    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    :cond_3
    move v0, v5

    .line 48
    goto :goto_1

    .line 58
    .restart local v0    # "hasImage":Z
    :cond_4
    const/4 v4, 0x4

    goto :goto_2
.end method

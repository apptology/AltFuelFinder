.class public Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "CartItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;,
        Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;
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


# instance fields
.field private listener:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;


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
    .line 29
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_cart_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;)Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->listener:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 40
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->layoutItemResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$1;)V

    .line 43
    .local v1, "holder":Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;
    sget v9, Lcom/biznessapps/layout/R$id;->thumbnail_view:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 44
    sget v9, Lcom/biznessapps/layout/R$id;->name_view:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 45
    sget v9, Lcom/biznessapps/layout/R$id;->description_view:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 46
    sget v9, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 47
    sget v9, Lcom/biznessapps/layout/R$id;->value_view:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->valueView:Landroid/widget/TextView;

    .line 48
    sget v9, Lcom/biznessapps/layout/R$id;->subtract_value_button:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->subValueView:Landroid/widget/Button;

    .line 49
    sget v9, Lcom/biznessapps/layout/R$id;->add_value_button:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->addValueView:Landroid/widget/Button;

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v11, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->subValueView:Landroid/widget/Button;

    invoke-virtual {v9, v10, v11}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 51
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v9

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v11, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->addValueView:Landroid/widget/Button;

    invoke-virtual {v9, v10, v11}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 53
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->valueView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v10}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 64
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v7

    .line 66
    .local v7, "quantity":I
    iget-object v8, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->valueView:Landroid/widget/TextView;

    .line 67
    .local v8, "valueView":Landroid/widget/TextView;
    iget-object v6, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 68
    .local v6, "priceView":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->subValueView:Landroid/widget/Button;

    new-instance v10, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$1;

    invoke-direct {v10, p0, v2, v8, v6}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$1;-><init>(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->addValueView:Landroid/widget/Button;

    new-instance v10, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;

    invoke-direct {v10, p0, v2, v8, v6}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$2;-><init>(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getOptionsListNames()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "optionsList":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "description":Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->fo_options:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "optionLabel":Ljava/lang/String;
    const-string v9, "%s <br/> %s: %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .end local v3    # "optionLabel":Ljava/lang/String;
    :cond_0
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v9

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v10

    int-to-float v11, v7

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v5, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 104
    .local v5, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v9, v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 106
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 107
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 108
    iget-object v9, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v9, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 109
    return-object p2

    .line 59
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "holder":Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v4    # "optionsList":Ljava/lang/String;
    .end local v5    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v6    # "priceView":Landroid/widget/TextView;
    .end local v7    # "quantity":I
    .end local v8    # "valueView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$ViewHolder;
    goto/16 :goto_0
.end method

.method public setListener(Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/food_ordering/cart/CartItemsAdapter;->listener:Lcom/biznessapps/food_ordering/cart/CartItemsAdapter$CartClickListener;

    .line 34
    return-void
.end method

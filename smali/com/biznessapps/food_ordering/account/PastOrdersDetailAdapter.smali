.class public Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "PastOrdersDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$1;,
        Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;
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
.field private itemPriceTitle:Ljava/lang/String;

.field private optionsTitle:Ljava/lang/String;

.field private quantityTitle:Ljava/lang/String;

.field private sizeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 2
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
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_past_cart_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 30
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fo_size:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->sizeTitle:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fo_quantity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->quantityTitle:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fo_item_price:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->itemPriceTitle:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->fo_options:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->optionsTitle:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 40
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->layoutItemResourceId:I

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;

    const/4 v14, 0x0

    invoke-direct {v2, v14}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$1;)V

    .line 43
    .local v2, "holder":Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;
    sget v14, Lcom/biznessapps/layout/R$id;->thumbnail_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 44
    sget v14, Lcom/biznessapps/layout/R$id;->name_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 45
    sget v14, Lcom/biznessapps/layout/R$id;->description_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 46
    sget v14, Lcom/biznessapps/layout/R$id;->price_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 48
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v15}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 58
    .local v3, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v14

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPriceWithoutOptions()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "itemPrice":Ljava/lang/String;
    const-string v14, "%s: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->itemPriceTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "itemPriceText":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getQuantity()I

    move-result v9

    .line 64
    .local v9, "quantity":I
    const-string v14, "%s: %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->quantityTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "quantityText":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSizeValue()Ljava/lang/String;

    move-result-object v13

    .line 67
    .local v13, "sizeValue":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getSize()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "sizeLabel":Ljava/lang/String;
    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "%s: %s <br/>"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->sizeTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v11, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "sizeText":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getOptionsListNames()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "optionsNames":Ljava/lang/String;
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "%s: %s <br/>"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->optionsTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "optionsText":Ljava/lang/String;
    :goto_2
    const-string v14, "%s %s <br/> %s %s"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    aput-object v5, v15, v16

    const/16 v16, 0x2

    aput-object v7, v15, v16

    const/16 v16, 0x3

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "description":Ljava/lang/String;
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v15

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getPrice()F

    move-result v16

    int-to-float v0, v9

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v8, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 80
    .local v8, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v14, v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v8, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getImageUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 82
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 83
    const/4 v14, 0x2

    invoke-virtual {v8, v14}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v14, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 85
    return-object p2

    .line 53
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "holder":Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;
    .end local v3    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v4    # "itemPrice":Ljava/lang/String;
    .end local v5    # "itemPriceText":Ljava/lang/String;
    .end local v6    # "optionsNames":Ljava/lang/String;
    .end local v7    # "optionsText":Ljava/lang/String;
    .end local v8    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v9    # "quantity":I
    .end local v10    # "quantityText":Ljava/lang/String;
    .end local v11    # "sizeLabel":Ljava/lang/String;
    .end local v12    # "sizeText":Ljava/lang/String;
    .end local v13    # "sizeValue":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/biznessapps/food_ordering/account/PastOrdersDetailAdapter$ViewHolder;
    goto/16 :goto_0

    .line 68
    .restart local v3    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .restart local v4    # "itemPrice":Ljava/lang/String;
    .restart local v5    # "itemPriceText":Ljava/lang/String;
    .restart local v9    # "quantity":I
    .restart local v10    # "quantityText":Ljava/lang/String;
    .restart local v11    # "sizeLabel":Ljava/lang/String;
    .restart local v13    # "sizeValue":Ljava/lang/String;
    :cond_1
    const-string v12, ""

    goto/16 :goto_1

    .line 71
    .restart local v6    # "optionsNames":Ljava/lang/String;
    .restart local v12    # "sizeText":Ljava/lang/String;
    :cond_2
    const-string v7, ""

    goto :goto_2
.end method

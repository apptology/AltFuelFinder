.class public Lcom/biznessapps/food_ordering/PastOrderAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "PastOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/PastOrderAdapter$1;,
        Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAST_ORDERS_DATE_FORMAT:Ljava/lang/String; = "dd MMM yyyy"


# instance fields
.field private formatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/PastOrderEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/PastOrderEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_past_order_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/biznessapps/food_ordering/PastOrderAdapter;->formatter:Ljava/text/SimpleDateFormat;

    .line 33
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    if-nez p2, :cond_2

    .line 39
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/food_ordering/PastOrderAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/biznessapps/food_ordering/PastOrderAdapter;->layoutItemResourceId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;

    const/4 v13, 0x0

    invoke-direct {v2, v13}, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/PastOrderAdapter$1;)V

    .line 41
    .local v2, "holder":Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;
    sget v13, Lcom/biznessapps/layout/R$id;->title_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 42
    sget v13, Lcom/biznessapps/layout/R$id;->description_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 43
    sget v13, Lcom/biznessapps/layout/R$id;->thumbnail_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 44
    sget v13, Lcom/biznessapps/layout/R$id;->delivery_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->deliveryView:Landroid/widget/TextView;

    .line 45
    sget v13, Lcom/biznessapps/layout/R$id;->price_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 46
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/food_ordering/PastOrderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;

    .line 52
    .local v4, "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getAddressTopRow()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 54
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getAddressBottomRow()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_0
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getTotalAmount()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getOrderType()I

    move-result v7

    .line 60
    .local v7, "orderType":I
    const/4 v13, 0x3

    if-ne v7, v13, :cond_3

    sget v8, Lcom/biznessapps/layout/R$string;->fo_dine_in:I

    .line 62
    .local v8, "orderTypeResId":I
    :goto_1
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getTime()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/food_ordering/PastOrderAdapter;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, "time":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getOrderedItems()Ljava/util/List;

    move-result-object v9

    .line 65
    .local v9, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v5, "itemsText":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/PastOrderAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/biznessapps/layout/R$string;->fo_items:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 69
    .local v11, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v11, :cond_6

    .line 70
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;

    .line 71
    .local v6, "order":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    invoke-virtual {v6}, Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v13, v11, -0x1

    if-ge v3, v13, :cond_1

    .line 73
    const-string v13, ", "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 48
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "holder":Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    .end local v5    # "itemsText":Ljava/lang/StringBuilder;
    .end local v6    # "order":Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;
    .end local v7    # "orderType":I
    .end local v8    # "orderTypeResId":I
    .end local v9    # "orders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .end local v11    # "size":I
    .end local v12    # "time":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;
    goto/16 :goto_0

    .line 60
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v4    # "item":Lcom/biznessapps/food_ordering/entities/PastOrderEntity;
    .restart local v7    # "orderType":I
    :cond_3
    const/4 v13, 0x2

    if-ne v7, v13, :cond_4

    sget v8, Lcom/biznessapps/layout/R$string;->fo_takeout:I

    goto :goto_1

    :cond_4
    sget v8, Lcom/biznessapps/layout/R$string;->fo_delivery:I

    goto :goto_1

    .line 62
    .restart local v8    # "orderTypeResId":I
    :cond_5
    const-string v12, ""

    goto :goto_2

    .line 76
    .restart local v3    # "i":I
    .restart local v5    # "itemsText":Ljava/lang/StringBuilder;
    .restart local v9    # "orders":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    .restart local v11    # "size":I
    .restart local v12    # "time":Ljava/lang/String;
    :cond_6
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    .end local v3    # "i":I
    .end local v5    # "itemsText":Ljava/lang/StringBuilder;
    .end local v11    # "size":I
    :goto_4
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->deliveryView:Landroid/widget/TextView;

    const-string v14, "%s: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/food_ordering/PastOrderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v10, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v10}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 84
    .local v10, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getThumbnail()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 86
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 87
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/food_ordering/PastOrderAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v13, v10}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 89
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->hasColor()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 90
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getItemColor()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/biznessapps/food_ordering/PastOrderAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/entities/PastOrderEntity;->getItemTextColor()I

    move-result v13

    const/4 v14, 0x4

    new-array v14, v14, [Landroid/widget/TextView;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget-object v0, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->deliveryView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/biznessapps/food_ordering/PastOrderAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 94
    :cond_7
    return-object p2

    .line 79
    .end local v10    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_8
    iget-object v13, v2, Lcom/biznessapps/food_ordering/PastOrderAdapter$ViewHolder;->descriptionView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

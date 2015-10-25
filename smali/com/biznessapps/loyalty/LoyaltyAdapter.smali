.class public Lcom/biznessapps/loyalty/LoyaltyAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "LoyaltyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
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
            "Lcom/biznessapps/loyalty/LoyaltyCommonEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyCommonEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->loyalty_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    if-nez p2, :cond_2

    .line 38
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/loyalty/LoyaltyAdapter;->layoutItemResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 41
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    sget v5, Lcom/biznessapps/layout/R$id;->info_item_container:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setFrameContainer(Landroid/view/ViewGroup;)V

    .line 42
    sget v5, Lcom/biznessapps/layout/R$id;->title_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 43
    sget v5, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setImageView(Landroid/widget/ImageView;)V

    .line 44
    sget v5, Lcom/biznessapps/layout/R$id;->right_arrow_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setRightArrowView(Landroid/widget/ImageView;)V

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;

    .line 52
    .local v1, "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    if-eqz v1, :cond_1

    .line 53
    sget v5, Lcom/biznessapps/layout/R$id;->checkin_text_even:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    new-instance v8, Lcom/biznessapps/loyalty/LoyaltyAdapter$1;

    invoke-direct {v8, p0}, Lcom/biznessapps/loyalty/LoyaltyAdapter$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyAdapter;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadRoundedBackground(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 73
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/loyalty/LoyaltyAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "leftDrawableIndex":I
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getItemTextColor()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getItemTextColor()I

    move-result v5

    new-array v6, v11, [Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/loyalty/LoyaltyAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 90
    .end local v2    # "leftDrawableIndex":I
    :cond_0
    instance-of v5, v1, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    if-eqz v5, :cond_5

    .line 91
    const-string v5, "%d/%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getAwardedValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getTotalValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/biznessapps/loyalty/LoyaltyAdapter;->checkPositioning(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 100
    return-object p2

    .line 47
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    .end local v1    # "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    goto/16 :goto_0

    .line 75
    .restart local v1    # "item":Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
    .restart local v3    # "textView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getImageId()I

    move-result v5

    if-lez v5, :cond_4

    .line 76
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;->getImageId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 93
    :cond_5
    instance-of v5, v1, Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v4, v1

    .line 95
    check-cast v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    .line 96
    .local v4, "v2Entity":Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    const-string v5, "%d %s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->perkUnitType:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

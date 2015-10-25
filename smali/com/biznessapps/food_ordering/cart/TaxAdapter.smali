.class public Lcom/biznessapps/food_ordering/cart/TaxAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "TaxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/cart/TaxAdapter$1;,
        Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/food_ordering/entities/TaxEntity;",
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
            "Lcom/biznessapps/food_ordering/entities/TaxEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/TaxEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_tax_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 25
    if-nez p2, :cond_0

    .line 26
    iget-object v2, p0, Lcom/biznessapps/food_ordering/cart/TaxAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/food_ordering/cart/TaxAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 27
    new-instance v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/cart/TaxAdapter$1;)V

    .line 28
    .local v0, "holder":Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->tax_value_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 29
    sget v2, Lcom/biznessapps/layout/R$id;->tax_label_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 31
    iget-object v2, v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;->price:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/TaxAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v2, v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/cart/TaxAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/cart/TaxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/entities/TaxEntity;

    .line 40
    .local v1, "item":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    iget-object v2, v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;->price:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getCaclulatedTax()F

    move-result v3

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getCurrencySign()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/food_ordering/FOUtils;->getFormattedValue(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v2, v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/TaxEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-object p2

    .line 35
    .end local v0    # "holder":Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/food_ordering/entities/TaxEntity;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/food_ordering/cart/TaxAdapter$ViewHolder;
    goto :goto_0
.end method

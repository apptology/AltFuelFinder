.class public Lcom/biznessapps/food_ordering/account/address/LocationSearchAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "LocationSearchAdapter.java"


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
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_location_chooser_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/LocationSearchAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/food_ordering/account/address/LocationSearchAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 29
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    sget v2, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/account/address/LocationSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/location/entities/LocationEntity;

    .line 37
    .local v1, "item":Lcom/biznessapps/location/entities/LocationEntity;
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    return-object p2

    .line 32
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    .end local v1    # "item":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    goto :goto_0
.end method

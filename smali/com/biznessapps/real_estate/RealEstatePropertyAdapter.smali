.class public Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "RealEstatePropertyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$1;,
        Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
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
            "Lcom/biznessapps/common/entities/CommonListEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->real_estate_property_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;-><init>(Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$1;)V

    .line 31
    .local v0, "holder":Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->label_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 41
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    if-eqz v1, :cond_0

    .line 42
    iget-object v2, v0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;->label:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 48
    :cond_0
    return-object p2

    .line 36
    .end local v0    # "holder":Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/real_estate/RealEstatePropertyAdapter$ViewHolder;
    goto :goto_0
.end method

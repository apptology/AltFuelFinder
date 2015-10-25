.class public Lcom/biznessapps/info_items/InfoAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "InfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">",
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
    .line 27
    .local p0, "this":Lcom/biznessapps/info_items/InfoAdapter;, "Lcom/biznessapps/info_items/InfoAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->info_item_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/biznessapps/info_items/InfoAdapter;, "Lcom/biznessapps/info_items/InfoAdapter<TT;>;"
    const/4 v5, 0x0

    .line 33
    if-nez p2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/biznessapps/info_items/InfoAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/info_items/InfoAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 37
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    sget v2, Lcom/biznessapps/layout/R$id;->info_item_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setFrameContainer(Landroid/view/ViewGroup;)V

    .line 38
    sget v2, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 39
    sget v2, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setImageView(Landroid/widget/ImageView;)V

    .line 40
    sget v2, Lcom/biznessapps/layout/R$id;->right_arrow_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setRightArrowView(Landroid/widget/ImageView;)V

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/info_items/InfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 48
    .local v1, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/info_items/InfoAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/info_items/InfoAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 65
    :cond_0
    return-object p2

    .line 43
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    .end local v1    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    goto :goto_0

    .line 53
    .restart local v1    # "item":Lcom/biznessapps/common/entities/CommonListEntity;
    :cond_2
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getImageId()I

    move-result v2

    if-lez v2, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getImageId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 55
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.class public Lcom/biznessapps/menu_items/MenuSectionItemAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "MenuSectionItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/menu_items/MenuSectionEntities;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/menu_items/MenuSectionEntities;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/menu_items/MenuSectionEntities;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;-><init>()V

    .line 30
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;
    sget v2, Lcom/biznessapps/layout/R$id;->menu_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 31
    sget v2, Lcom/biznessapps/layout/R$id;->menu_price_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->setTextViewPrice(Landroid/widget/TextView;)V

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/menu_items/MenuSectionEntities;

    .line 39
    .local v1, "item":Lcom/biznessapps/menu_items/MenuSectionEntities;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->getTextViewPrice()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v1}, Lcom/biznessapps/menu_items/MenuSectionEntities;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;->getTextViewPrice()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/menu_items/MenuSectionItemAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 49
    :cond_0
    return-object p2

    .line 34
    .end local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;
    .end local v1    # "item":Lcom/biznessapps/menu_items/MenuSectionEntities;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;

    .restart local v0    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$MenuItem;
    goto :goto_0
.end method

.class public Lcom/biznessapps/common/adapters/SimpleListType2Adapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "SimpleListType2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field protected mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

.field protected mItem:Lcom/biznessapps/common/entities/CommonListEntity;


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
    .line 28
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->common_layout_simple_list_item2:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    if-nez p2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->layoutItemResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-direct {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    .line 37
    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    sget v0, Lcom/biznessapps/layout/R$id;->tvName:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 38
    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    sget v0, Lcom/biznessapps/layout/R$id;->tvDescription:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setDescriptionTextView(Landroid/widget/TextView;)V

    .line 39
    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    sget v0, Lcom/biznessapps/layout/R$id;->ivRightArrow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setRightArrowView(Landroid/widget/ImageView;)V

    .line 41
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/CommonListEntity;

    iput-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    .line 49
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getRightArrowView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->hasArrow()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getDescriptioinTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_2
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getItemTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {v2}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getDescriptioinTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 68
    return-object p2

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    iput-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    goto/16 :goto_0

    .line 49
    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mHolder:Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getDescriptioinTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/adapters/SimpleListType2Adapter;->mItem:Lcom/biznessapps/common/entities/CommonListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/common/entities/CommonListEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

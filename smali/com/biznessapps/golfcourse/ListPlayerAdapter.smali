.class public Lcom/biznessapps/golfcourse/ListPlayerAdapter;
.super Lcom/biznessapps/common/adapters/SimpleListType3Adapter;
.source "ListPlayerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/SimpleListType3Adapter",
        "<",
        "Lcom/biznessapps/common/entities/CommonListEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 0
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
    .line 30
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/common/entities/CommonListEntity;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/common/adapters/SimpleListType3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/adapters/SimpleListType3Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 37
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    .line 38
    .local v0, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$dimen;->common_padding_medium1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 39
    .local v2, "size":I
    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/golfcourse/ListPlayerAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ListPlayerAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v5

    invoke-virtual {v0}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 45
    return-object v3
.end method

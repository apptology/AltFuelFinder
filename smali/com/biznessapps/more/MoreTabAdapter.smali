.class public Lcom/biznessapps/more/MoreTabAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "MoreTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/api/navigation/TabButton;",
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
            "Lcom/biznessapps/api/navigation/TabButton;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->more_item_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 28
    iget-object v5, p0, Lcom/biznessapps/more/MoreTabAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/more/MoreTabAdapter;->layoutItemResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    sget v5, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 30
    .local v4, "titleView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/biznessapps/more/MoreTabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/api/navigation/TabButton;

    .line 34
    .local v3, "item":Lcom/biznessapps/api/navigation/TabButton;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 36
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/more/Tab;->getTabIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "imageUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    iget-object v5, p0, Lcom/biznessapps/more/MoreTabAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v5, v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;)V

    .line 43
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_1
    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getItemColor()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/biznessapps/more/MoreTabAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getItemTextColor()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/widget/TextView;

    aput-object v4, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/more/MoreTabAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 52
    :cond_0
    return-object p2

    .line 39
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "imageUrl":Ljava/lang/String;
    goto :goto_0

    .line 45
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

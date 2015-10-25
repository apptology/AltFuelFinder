.class public Lcom/biznessapps/home_screen/HomeSliderListAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "HomeSliderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/api/navigation/TabButton;",
        ">;"
    }
.end annotation


# instance fields
.field private appSettings:Lcom/biznessapps/common/entities/AppSettings;


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
    .line 27
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->home_slider_list_row:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 28
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 33
    iget-object v9, p0, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->layoutItemResourceId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    sget v9, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 35
    .local v5, "titleView":Landroid/widget/TextView;
    sget v9, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/api/navigation/TabButton;

    .line 39
    .local v2, "item":Lcom/biznessapps/api/navigation/TabButton;
    const/4 v0, 0x0

    .line 40
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getTabIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 46
    iget-object v9, p0, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v9, v0, v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;)V

    .line 47
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_1
    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v9, p0, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v9}, Lcom/biznessapps/common/entities/AppSettings;->getHomeTabTextColor()I

    move-result v4

    .line 55
    .local v4, "textColor":I
    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/more/Tab;->isShowText()Z

    move-result v3

    .line 56
    .local v3, "showText":Z
    :goto_2
    if-eqz v3, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/more/Tab;->getTabText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/more/Tab;->getTabText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v4

    .line 60
    :cond_1
    invoke-virtual {p0, v7}, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-array v6, v8, [Landroid/widget/TextView;

    aput-object v5, v6, v7

    invoke-virtual {p0, v4, v6}, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 63
    return-object p2

    .line 43
    .end local v3    # "showText":Z
    .end local v4    # "textColor":I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/biznessapps/home_screen/HomeSliderListAdapter;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 49
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .restart local v4    # "textColor":I
    :cond_4
    move v3, v8

    .line 55
    goto :goto_2
.end method

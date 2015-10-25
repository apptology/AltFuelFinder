.class public Lcom/biznessapps/home_screen/MenuGridAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "MenuGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/home_screen/MenuGridAdapter$1;,
        Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;
    }
.end annotation

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

.field private tabMargin:I

.field private tabSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p4, "tabSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabButton;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->home_tab:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 37
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/home_screen/MenuGridAdapter;->appSettings:Lcom/biznessapps/common/entities/AppSettings;

    .line 38
    iget v0, p0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabMargin:I

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$dimen;->common_padding_small0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabMargin:I

    .line 41
    :cond_0
    iget v0, p0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabMargin:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p4, v0

    iput v0, p0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/home_screen/MenuGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/api/navigation/TabButton;

    .line 49
    .local v7, "item":Lcom/biznessapps/api/navigation/TabButton;
    invoke-virtual {v7}, Lcom/biznessapps/api/navigation/TabButton;->getTab()Lcom/biznessapps/more/Tab;

    move-result-object v12

    .line 52
    .local v12, "tab":Lcom/biznessapps/more/Tab;
    if-nez p2, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/home_screen/MenuGridAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/home_screen/MenuGridAdapter;->layoutItemResourceId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;-><init>(Lcom/biznessapps/home_screen/MenuGridAdapter$1;)V

    .line 56
    .local v3, "holder":Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;
    sget v17, Lcom/biznessapps/layout/R$id;->navigation_image_view:I

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 57
    sget v17, Lcom/biznessapps/layout/R$id;->navigation_text_view:I

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 59
    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3fd999999999999aL    # 0.4

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v5, v0

    .line 60
    .local v5, "imageSize":I
    iget-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    .local v9, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 62
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 64
    new-instance v8, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabSize:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/biznessapps/home_screen/MenuGridAdapter;->tabSize:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 65
    .local v8, "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    sget v17, Lcom/biznessapps/layout/R$id;->navigation_tab_container:I

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 71
    .end local v5    # "imageSize":I
    .end local v8    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v10

    .line 76
    .local v10, "settings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getTabText()Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "textColor":Ljava/lang/String;
    :goto_1
    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getTabTint()Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "tabTint":Ljava/lang/String;
    :goto_2
    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getTabTintOpacity()F

    move-result v16

    .line 79
    .local v16, "tintOpacity":F
    :goto_3
    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->isShowText()Z

    move-result v11

    .line 81
    .local v11, "showText":Z
    :goto_4
    iget-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v14}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    new-instance v15, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    invoke-direct {v15}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;-><init>()V

    .line 84
    .local v15, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintColor(I)V

    .line 85
    invoke-virtual/range {v15 .. v16}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintOpacity(F)V

    .line 86
    iget-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v11, :cond_6

    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getTabSrc()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "bgUrl":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/home_screen/MenuGridAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v15}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 90
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v4

    .line 91
    .local v4, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    const/4 v6, 0x0

    .line 93
    .local v6, "imageUrl":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->hasCustomDesign()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 94
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getTabIcon()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    :goto_7
    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 99
    iget-object v0, v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;)V

    .line 101
    :cond_0
    return-object p2

    .line 69
    .end local v2    # "bgUrl":Ljava/lang/String;
    .end local v3    # "holder":Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;
    .end local v4    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v6    # "imageUrl":Ljava/lang/String;
    .end local v10    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    .end local v11    # "showText":Z
    .end local v13    # "tabTint":Ljava/lang/String;
    .end local v14    # "textColor":Ljava/lang/String;
    .end local v15    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    .end local v16    # "tintOpacity":F
    :cond_1
    sget v17, Lcom/biznessapps/layout/R$id;->navigation_tab_container:I

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;

    .restart local v3    # "holder":Lcom/biznessapps/home_screen/MenuGridAdapter$ViewHolder;
    goto/16 :goto_0

    .line 76
    .restart local v10    # "settings":Lcom/biznessapps/common/entities/AppSettings;
    :cond_2
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getTabText()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 77
    .restart local v14    # "textColor":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getTabTint()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 78
    .restart local v13    # "tabTint":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getTabTintOpacity()F

    move-result v16

    goto/16 :goto_3

    .line 79
    .restart local v16    # "tintOpacity":F
    :cond_5
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->isShowText()Z

    move-result v11

    goto/16 :goto_4

    .line 86
    .restart local v11    # "showText":Z
    .restart local v15    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_6
    const/16 v17, 0x4

    goto/16 :goto_5

    .line 87
    :cond_7
    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getTabSrc()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 96
    .restart local v2    # "bgUrl":Ljava/lang/String;
    .restart local v4    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v6    # "imageUrl":Ljava/lang/String;
    :cond_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/biznessapps/common/entities/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Lcom/biznessapps/more/Tab;->getImage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7
.end method

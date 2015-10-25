.class public Lcom/biznessapps/home_screen/HomeScreenHelper;
.super Ljava/lang/Object;
.source "HomeScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/biznessapps/home_screen/HomeScreenHelper;->callUs(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/biznessapps/home_screen/HomeScreenHelper;->showDirections(Landroid/app/Activity;)V

    return-void
.end method

.method private static callUs(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 228
    sget v0, Lcom/biznessapps/layout/R$string;->branch_call_title:I

    new-instance v1, Lcom/biznessapps/home_screen/HomeScreenHelper$7;

    invoke-direct {v1, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$7;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/biznessapps/home_screen/HomeScreenHelper;->showMultipleDialog(Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;Z)V

    .line 237
    return-void
.end method

.method private static defineSubButtons(Landroid/widget/GridView;Landroid/app/Activity;)V
    .locals 23
    .param p0, "gallery"    # Landroid/widget/GridView;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v6

    .line 139
    .local v6, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v3

    .line 140
    .local v3, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    invoke-virtual {v6}, Lcom/biznessapps/api/CachingManager;->getAppInfo()Lcom/biznessapps/common/entities/AppInfoEntity;

    move-result-object v2

    .line 141
    .local v2, "appInfo":Lcom/biznessapps/common/entities/AppInfoEntity;
    const/4 v11, 0x1

    .line 142
    .local v11, "showSubTabs":Z
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v19

    if-nez v19, :cond_0

    .line 144
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppInfoEntity;->isForIpadOnly()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 145
    const/4 v11, 0x0

    .line 148
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v5, "buttonList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/16 v17, 0x1

    .line 152
    .local v17, "useWithOldMode":Z
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 154
    const/16 v17, 0x0

    .line 156
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppInfoEntity;->getSubTabs()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_3

    if-eqz v11, :cond_3

    if-eqz v17, :cond_3

    const/4 v7, 0x1

    .line 157
    .local v7, "hasSubTabs":Z
    :goto_0
    if-eqz v7, :cond_4

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 158
    if-eqz v7, :cond_6

    .line 159
    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppInfoEntity;->getSubTabs()Ljava/util/List;

    move-result-object v13

    .line 161
    .local v13, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fc3333333333333L    # 0.15

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 162
    .local v12, "subTabSize":I
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 163
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v9

    .line 164
    .local v9, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/biznessapps/more/Tab;

    .line 165
    .local v14, "tab":Lcom/biznessapps/more/Tab;
    invoke-virtual {v14}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Lcom/biznessapps/layout/R$layout;->sub_tab_layout:I

    invoke-static/range {v19 .. v20}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 170
    .local v18, "view":Landroid/view/ViewGroup;
    sget v19, Lcom/biznessapps/layout/R$id;->sub_home_image:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 172
    .local v4, "button":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 173
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 174
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 175
    sget v19, Lcom/biznessapps/layout/R$id;->sub_home_text:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 176
    .local v15, "textView":Landroid/widget/TextView;
    invoke-virtual {v14}, Lcom/biznessapps/more/Tab;->getTabLabelTextColor()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {v14}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v14}, Lcom/biznessapps/more/Tab;->getTabImageUrl()Ljava/lang/String;

    move-result-object v16

    .line 181
    .local v16, "url":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v4}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;)V

    .line 183
    new-instance v19, Lcom/biznessapps/home_screen/HomeScreenHelper$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v14, v1}, Lcom/biznessapps/home_screen/HomeScreenHelper$5;-><init>(Lcom/biznessapps/api/CachingManager;Lcom/biznessapps/more/Tab;Landroid/app/Activity;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 201
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v4    # "button":Landroid/widget/ImageView;
    .end local v7    # "hasSubTabs":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "subTabSize":I
    .end local v13    # "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    .end local v14    # "tab":Lcom/biznessapps/more/Tab;
    .end local v15    # "textView":Landroid/widget/TextView;
    .end local v16    # "url":Ljava/lang/String;
    .end local v18    # "view":Landroid/view/ViewGroup;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 157
    .restart local v7    # "hasSubTabs":Z
    :cond_4
    const/16 v19, 0x8

    goto/16 :goto_1

    .line 203
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v12    # "subTabSize":I
    .restart local v13    # "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 204
    new-instance v19, Lcom/biznessapps/home_screen/HomeScreenHelper$6;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/biznessapps/home_screen/HomeScreenHelper$6;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v12    # "subTabSize":I
    .end local v13    # "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    :cond_6
    return-void
.end method

.method private static getFilteredData(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "searchQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    move-object v0, p0

    .line 374
    :cond_0
    return-object v0

    .line 364
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/more/Tab;

    .line 365
    .local v2, "item":Lcom/biznessapps/more/Tab;
    invoke-virtual {v2}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static initOptionsViews(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 48
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 51
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    const/4 v5, 0x1

    .line 52
    .local v5, "rowsLimit":I
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getRows()I

    move-result v10

    if-le v10, v8, :cond_0

    .line 78
    :goto_0
    return-void

    .line 55
    :cond_0
    sget v10, Lcom/biznessapps/layout/R$id;->home_tab_gallery_view:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 57
    .local v3, "gallery":Landroid/widget/GridView;
    invoke-static {v3, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper;->defineSubButtons(Landroid/widget/GridView;Landroid/app/Activity;)V

    .line 59
    new-instance v6, Lcom/biznessapps/home_screen/HomeScreenHelper$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$1;-><init>(Landroid/app/Activity;)V

    .line 68
    .local v6, "run":Ljava/lang/Runnable;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v3, v6, v10}, Lcom/biznessapps/utils/ViewUtils;->addUpDownGestureListener(Landroid/view/View;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 70
    sget v10, Lcom/biznessapps/layout/R$id;->home_horizontal_container:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 71
    .local v1, "buttonsContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$dimen;->tabs_full_height_1row:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 73
    .local v7, "tabsAlignment":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$dimen;->button_margin_bottom:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 74
    .local v2, "defaultBottomMargin":I
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v10

    if-eqz v10, :cond_1

    .line 75
    .local v8, "useNewHomeTabMode":Z
    :goto_1
    if-eqz v8, :cond_2

    .end local v2    # "defaultBottomMargin":I
    :goto_2
    invoke-virtual {v4, v9, v9, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    invoke-static {p0, p1, p2}, Lcom/biznessapps/home_screen/HomeScreenHelper;->updateHomeButtons(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    goto :goto_0

    .end local v8    # "useNewHomeTabMode":Z
    .restart local v2    # "defaultBottomMargin":I
    :cond_1
    move v8, v9

    .line 74
    goto :goto_1

    .restart local v8    # "useNewHomeTabMode":Z
    :cond_2
    move v2, v7

    .line 75
    goto :goto_2
.end method

.method public static setTabsToSlider(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;IZLcom/biznessapps/api/UiSettings;Ljava/lang/String;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "ll"    # Landroid/view/ViewGroup;
    .param p3, "llWidth"    # I
    .param p4, "isListLayout"    # Z
    .param p5, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p6, "searchQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/more/Tab;",
            ">;IZ",
            "Lcom/biznessapps/api/UiSettings;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    move-object/from16 v0, p6

    invoke-static {p2, v0}, Lcom/biznessapps/home_screen/HomeScreenHelper;->getFilteredData(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "filteredTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/more/Tab;>;"
    if-eqz p4, :cond_1

    .line 314
    sget v10, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 315
    .local v7, "listView":Landroid/widget/ListView;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 316
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 318
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 319
    .local v6, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/more/Tab;

    .line 320
    .local v5, "item":Lcom/biznessapps/more/Tab;
    new-instance v8, Lcom/biznessapps/api/navigation/TabButton;

    invoke-direct {v8, v5}, Lcom/biznessapps/api/navigation/TabButton;-><init>(Lcom/biznessapps/more/Tab;)V

    .line 322
    .local v8, "tab":Lcom/biznessapps/api/navigation/TabButton;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    .end local v5    # "item":Lcom/biznessapps/more/Tab;
    .end local v8    # "tab":Lcom/biznessapps/api/navigation/TabButton;
    :cond_0
    new-instance v1, Lcom/biznessapps/home_screen/HomeSliderListAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-direct {v1, v10, v6, v0}, Lcom/biznessapps/home_screen/HomeSliderListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 325
    .local v1, "adapter":Lcom/biznessapps/home_screen/HomeSliderListAdapter;
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 327
    new-instance v10, Lcom/biznessapps/home_screen/HomeScreenHelper$9;

    invoke-direct {v10, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$9;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    .end local v1    # "adapter":Lcom/biznessapps/home_screen/HomeSliderListAdapter;
    .end local v7    # "listView":Landroid/widget/ListView;
    :goto_1
    return-void

    .line 336
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    :cond_1
    sget v10, Lcom/biznessapps/layout/R$id;->grid_view:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 337
    .local v3, "gridView":Landroid/widget/GridView;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/GridView;->setVisibility(I)V

    .line 338
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 339
    .restart local v6    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/api/navigation/TabButton;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/more/Tab;

    .line 340
    .restart local v5    # "item":Lcom/biznessapps/more/Tab;
    new-instance v8, Lcom/biznessapps/api/navigation/TabButton;

    invoke-direct {v8, v5}, Lcom/biznessapps/api/navigation/TabButton;-><init>(Lcom/biznessapps/more/Tab;)V

    .line 342
    .restart local v8    # "tab":Lcom/biznessapps/api/navigation/TabButton;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 345
    .end local v5    # "item":Lcom/biznessapps/more/Tab;
    .end local v8    # "tab":Lcom/biznessapps/api/navigation/TabButton;
    :cond_2
    div-int/lit8 v9, p3, 0x2

    .line 346
    .local v9, "tabSize":I
    new-instance v1, Lcom/biznessapps/home_screen/MenuGridAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-direct {v1, v10, v6, v0, v9}, Lcom/biznessapps/home_screen/MenuGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;I)V

    .line 347
    .local v1, "adapter":Lcom/biznessapps/home_screen/MenuGridAdapter;
    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    new-instance v10, Lcom/biznessapps/home_screen/HomeScreenHelper$10;

    invoke-direct {v10, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$10;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v10}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method private static showDirections(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    sget v0, Lcom/biznessapps/layout/R$string;->branch_directions_title:I

    new-instance v1, Lcom/biznessapps/home_screen/HomeScreenHelper$8;

    invoke-direct {v1, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$8;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/biznessapps/home_screen/HomeScreenHelper;->showMultipleDialog(Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;Z)V

    .line 248
    return-void
.end method

.method private static showMultipleDialog(Landroid/app/Activity;ILandroid/widget/AdapterView$OnItemClickListener;Z)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialogTitle"    # I
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p3, "makeCall"    # Z

    .prologue
    .line 251
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/biznessapps/api/CachingManager;->getAppInfo()Lcom/biznessapps/common/entities/AppInfoEntity;

    move-result-object v1

    .line 252
    .local v1, "appInfo":Lcom/biznessapps/common/entities/AppInfoEntity;
    if-nez v1, :cond_0

    const/4 v8, 0x0

    .line 253
    .local v8, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 254
    if-eqz p3, :cond_1

    .line 255
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v10}, Lcom/biznessapps/location/entities/LocationEntity;->getTelephone()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "tel":Ljava/lang/String;
    invoke-static {p0, v9}, Lcom/biznessapps/utils/ViewUtils;->call(Landroid/app/Activity;Ljava/lang/String;)V

    .line 281
    .end local v9    # "tel":Ljava/lang/String;
    :goto_1
    return-void

    .line 252
    .end local v8    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/biznessapps/common/entities/AppInfoEntity;->getLocations()Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 258
    .restart local v8    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    :cond_1
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/location/entities/LocationEntity;

    .line 259
    .local v7, "location":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v7}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v7    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$layout;->multiple_item_dialog:I

    invoke-static {v10, v11}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 264
    .local v6, "listViewRoot":Landroid/view/ViewGroup;
    sget v10, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 265
    .local v5, "listView":Landroid/widget/ListView;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 266
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/location/entities/LocationEntity;

    .line 269
    .restart local v7    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    const-string v10, ", "

    invoke-virtual {v7, v10}, Lcom/biznessapps/location/entities/LocationEntity;->getAddressInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 270
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 273
    .end local v7    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_4
    new-instance v2, Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10, v4}, Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 274
    .local v2, "ex":Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;
    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    .end local v2    # "ex":Lcom/biznessapps/home_screen/HomeScreenHelper$MulitipleItemAdapter;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    :cond_5
    invoke-virtual {v5, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 277
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public static updateHomeButtons(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 81
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v0

    .line 82
    .local v0, "appSettings":Lcom/biznessapps/common/entities/AppSettings;
    const/4 v4, 0x1

    .line 83
    .local v4, "rowsLimit":I
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getRows()I

    move-result v6

    const/4 v9, 0x1

    if-le v6, v9, :cond_0

    .line 135
    :goto_0
    return-void

    .line 86
    :cond_0
    sget v6, Lcom/biznessapps/layout/R$id;->call_us_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    .local v1, "callUsButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->direction_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 88
    .local v2, "directionButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$id;->tell_friend_button:I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 90
    .local v5, "tellFriendButton":Landroid/widget/Button;
    sget v6, Lcom/biznessapps/layout/R$string;->call_us:I

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 91
    sget v6, Lcom/biznessapps/layout/R$string;->directions:I

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 92
    sget v6, Lcom/biznessapps/layout/R$string;->share:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 94
    const/4 v3, 0x0

    .line 97
    .local v3, "hasSubButtons":Z
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getHomeLayoutType()I

    move-result v6

    if-nez v6, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->getNavigationMenuType()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_1

    .line 99
    const/4 v3, 0x1

    .line 107
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->hasCallButton()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->hasDirectionButton()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/biznessapps/common/entities/AppSettings;->hasTellFriendButton()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 112
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 114
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 116
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance v6, Lcom/biznessapps/home_screen/HomeScreenHelper$2;

    invoke-direct {v6, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v6, Lcom/biznessapps/home_screen/HomeScreenHelper$3;

    invoke-direct {v6, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v6, Lcom/biznessapps/home_screen/HomeScreenHelper$4;

    invoke-direct {v6, p0}, Lcom/biznessapps/home_screen/HomeScreenHelper$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 103
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v6, v8

    .line 107
    goto :goto_2

    :cond_4
    move v6, v8

    .line 108
    goto :goto_3

    :cond_5
    move v7, v8

    .line 109
    goto :goto_4
.end method

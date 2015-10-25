.class public Lcom/biznessapps/reseller/ResellerDashboardFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ResellerDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;,
        Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;,
        Lcom/biznessapps/reseller/ResellerDashboardFragment$AppsContainer;
    }
.end annotation


# static fields
.field private static final ALL_TYPE:I = 0x0

.field private static final DEFAULT_INDEX:I = 0x0

.field private static final DEMO_TYPE:I = 0x2

.field private static final LIVE_TYPE:I = 0x1


# instance fields
.field private circlesContainer:Landroid/view/ViewGroup;

.field private clearSearchView:Landroid/widget/ImageView;

.field private currentPageIndex:I

.field private exitIcon:Landroid/widget/ImageView;

.field private info:Lcom/biznessapps/reseller/ResellerInfo;

.field private messageView:Landroid/widget/TextView;

.field private searchEditText:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private type:I

.field private typeChooserView:Landroid/widget/TextView;

.field private viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    .line 79
    iput v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I

    .line 81
    iput v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->currentPageIndex:I

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reseller/ResellerDashboardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->currentPageIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/reseller/ResellerDashboardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->currentPageIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->circlesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/reseller/ResellerInfo;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/reseller/ResellerDashboardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I

    return v0
.end method

.method static synthetic access$502(Lcom/biznessapps/reseller/ResellerDashboardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->type:I

    return p1
.end method

.method static synthetic access$600(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getFilteredApps(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Lcom/biznessapps/widgets/ExtendedViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/reseller/ResellerDashboardFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reseller/ResellerDashboardFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method private customizeWithColors()V
    .locals 6

    .prologue
    .line 255
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    invoke-virtual {v4}, Lcom/biznessapps/reseller/ResellerInfo;->getHeaderBgColor()I

    move-result v1

    .line 257
    .local v1, "headerBgColor":I
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->search_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColorBrightness(I)F

    move-result v0

    .line 262
    .local v0, "brightness":F
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    .line 263
    const/high16 v2, -0x1000000

    .line 268
    .local v2, "textColor":I
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    invoke-virtual {v4}, Lcom/biznessapps/reseller/ResellerInfo;->getPartnerName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    invoke-virtual {v4}, Lcom/biznessapps/reseller/ResellerInfo;->getPartnerName()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "titleText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->exitIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->clearSearchView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 278
    iget-object v4, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 279
    return-void

    .line 265
    .end local v2    # "textColor":I
    .end local v3    # "titleText":Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    .restart local v2    # "textColor":I
    goto :goto_0

    .line 268
    :cond_1
    sget v4, Lcom/biznessapps/layout/R$string;->dashboard:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getFilteredApps(Ljava/util/List;Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p2, "filterText"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reseller/ResellerInfo$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "orinalList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;

    .line 292
    .local v0, "app":Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    if-nez p2, :cond_3

    .line 293
    if-nez p3, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo()Z

    move-result v9

    if-nez v9, :cond_0

    .line 295
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_1
    if-ne p3, v7, :cond_2

    .line 299
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isLive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_2
    if-ne p3, v11, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 305
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->getAppCode()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "code":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 313
    .local v4, "existInName":Z
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v3, v7

    .line 314
    .local v3, "existInCode":Z
    :goto_2
    if-nez v4, :cond_4

    if-eqz v3, :cond_0

    .line 315
    :cond_4
    if-nez p3, :cond_7

    .line 316
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo()Z

    move-result v9

    if-nez v9, :cond_0

    .line 317
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "existInCode":Z
    .end local v4    # "existInName":Z
    :cond_5
    move v4, v8

    .line 312
    goto :goto_1

    .restart local v4    # "existInName":Z
    :cond_6
    move v3, v8

    .line 313
    goto :goto_2

    .line 320
    .restart local v3    # "existInCode":Z
    :cond_7
    if-ne p3, v7, :cond_8

    .line 321
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isLive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 322
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    :cond_8
    if-ne p3, v11, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/biznessapps/reseller/ResellerInfo$AppInfo;->isDemo()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 327
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 334
    .end local v0    # "app":Lcom/biznessapps/reseller/ResellerInfo$AppInfo;
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "existInCode":Z
    .end local v4    # "existInName":Z
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    return-object v1
.end method


# virtual methods
.method public getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 86
    sget v7, Lcom/biznessapps/layout/R$layout;->reseller_dashboard_layout:I

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->initSettingsData()V

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "RESELLER_DATA"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/reseller/ResellerInfo;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    invoke-virtual {v7}, Lcom/biznessapps/reseller/ResellerInfo;->getApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reseller/ResellerInfo$AppInfo;>;"
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->message_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->messageView:Landroid/widget/TextView;

    .line 95
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->messageView:Landroid/widget/TextView;

    sget v8, Lcom/biznessapps/layout/R$string;->reseller_no_app_message:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->view_pager:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/widgets/ExtendedViewPager;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    .line 97
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->tabs_navigation_container:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->circlesContainer:Landroid/view/ViewGroup;

    .line 98
    new-instance v4, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;

    invoke-direct {v4, p0, v1}, Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Ljava/util/List;)V

    .line 99
    .local v4, "pagerAdapter":Lcom/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter;
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    invoke-virtual {v7, v4}, Lcom/biznessapps/widgets/ExtendedViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    new-instance v8, Lcom/biznessapps/reseller/ResellerDashboardFragment$1;

    invoke-direct {v8, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$1;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/ExtendedViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    new-instance v8, Lcom/biznessapps/reseller/ResellerDashboardFragment$2;

    invoke-direct {v8, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$2;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/ExtendedViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->search_edit_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    .line 135
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    sget v8, Lcom/biznessapps/layout/R$string;->search:I

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(I)V

    .line 136
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->searchEditText:Landroid/widget/EditText;

    new-instance v8, Lcom/biznessapps/reseller/ResellerDashboardFragment$3;

    invoke-direct {v8, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$3;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->clear_search_icon:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->clearSearchView:Landroid/widget/ImageView;

    .line 153
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->clearSearchView:Landroid/widget/ImageView;

    new-instance v8, Lcom/biznessapps/reseller/ResellerDashboardFragment$4;

    invoke-direct {v8, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$4;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->spinner_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 167
    .local v6, "typeSpinner":Landroid/widget/Spinner;
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->type_chooser_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    .line 168
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    new-instance v8, Lcom/biznessapps/reseller/ResellerDashboardFragment$5;

    invoke-direct {v8, p0, v6}, Lcom/biznessapps/reseller/ResellerDashboardFragment$5;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 176
    .local v2, "headerView":Landroid/view/ViewGroup;
    new-instance v7, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;

    invoke-direct {v7, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$6;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget v7, Lcom/biznessapps/layout/R$string;->all:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "allText":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v10

    const/4 v7, 0x1

    sget v8, Lcom/biznessapps/layout/R$string;->live:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    sget v8, Lcom/biznessapps/layout/R$string;->demo:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 189
    .local v3, "names":[Ljava/lang/String;
    new-instance v5, Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$layout;->reseller_spinner_layout:I

    invoke-direct {v5, p0, v7, v8, v3}, Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 191
    .local v5, "spinnerAdapter":Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;
    sget v7, Lcom/biznessapps/layout/R$layout;->reseller_spinner_layout:I

    invoke-virtual {v5, v7}, Lcom/biznessapps/reseller/ResellerDashboardFragment$CustomArrayAdapter;->setDropDownViewResource(I)V

    .line 192
    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 193
    new-instance v7, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;

    invoke-direct {v7, p0, v3}, Lcom/biznessapps/reseller/ResellerDashboardFragment$7;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;[Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 210
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->exit_icon:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->exitIcon:Landroid/widget/ImageView;

    .line 211
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->exitIcon:Landroid/widget/ImageView;

    new-instance v8, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;

    invoke-direct {v8, p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment$8;-><init>(Lcom/biznessapps/reseller/ResellerDashboardFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-direct {p0}, Lcom/biznessapps/reseller/ResellerDashboardFragment;->customizeWithColors()V

    .line 231
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->info:Lcom/biznessapps/reseller/ResellerInfo;

    invoke-virtual {v7}, Lcom/biznessapps/reseller/ResellerInfo;->isActive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 232
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->search_container:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 234
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->typeChooserView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->viewPager:Lcom/biznessapps/widgets/ExtendedViewPager;

    invoke-virtual {v7, v9}, Lcom/biznessapps/widgets/ExtendedViewPager;->setVisibility(I)V

    .line 236
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->circlesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->messageView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->messageView:Landroid/widget/TextView;

    sget v8, Lcom/biznessapps/layout/R$string;->reseller_not_active_account:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :cond_0
    iget-object v7, p0, Lcom/biznessapps/reseller/ResellerDashboardFragment;->root:Landroid/view/ViewGroup;

    return-object v7
.end method

.class public Lcom/biznessapps/widgets/CommonNavigationBar;
.super Landroid/widget/FrameLayout;
.source "CommonNavigationBar.java"


# instance fields
.field private defaultNavigationButtonValue:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tvTitle:Landroid/widget/TextView;

.field private vgDefaultNavigationButton:Lcom/biznessapps/widgets/CommonNavigationButton;

.field private vgLeftNavigationButtonGroup:Landroid/view/ViewGroup;

.field private vgLeftNavigationButtonGroupResId:I

.field private vgRightNavigationButtonGroup:Landroid/view/ViewGroup;

.field private vgRightNavigationButtonGroupResId:I

.field private vgRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/CommonNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/CommonNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p2}, Lcom/biznessapps/widgets/CommonNavigationBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lcom/biznessapps/widgets/CommonNavigationBar;->initUI()V

    .line 55
    return-void
.end method

.method private applyStyle(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CommonNavigationBar;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/CommonNavigationBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "subView":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 116
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "subView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/biznessapps/widgets/CommonNavigationBar;->applyStyle(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 113
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .restart local v1    # "subView":Landroid/view/View;
    :cond_1
    instance-of v2, v1, Lcom/biznessapps/widgets/CommonStyleableComponent;

    if-eqz v2, :cond_0

    .line 118
    check-cast v1, Lcom/biznessapps/widgets/CommonStyleableComponent;

    .end local v1    # "subView":Landroid/view/View;
    invoke-interface {v1, p2}, Lcom/biznessapps/widgets/CommonStyleableComponent;->applyStyle(Lcom/biznessapps/api/UiSettings;)V

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgDefaultNavigationButton:Lcom/biznessapps/widgets/CommonNavigationButton;

    invoke-virtual {v3}, Lcom/biznessapps/widgets/CommonNavigationButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 122
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CommonNavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/biznessapps/layout/R$styleable;->CommonTitleBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->title:Ljava/lang/String;

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroupResId:I

    .line 66
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRightNavigationButtonGroupResId:I

    .line 67
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->defaultNavigationButtonValue:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CommonNavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$layout;->common_title_bar_layout:I

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRoot:Landroid/view/ViewGroup;

    .line 77
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->tvTitle:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->tvTitle:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->btDefaultRightNavigation:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/CommonNavigationButton;

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgDefaultNavigationButton:Lcom/biznessapps/widgets/CommonNavigationButton;

    .line 86
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->flLeftNavigationButtonGroup:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroup:Landroid/view/ViewGroup;

    .line 87
    iget v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroupResId:I

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    iget v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroupResId:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/CommonNavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "buttonGroup":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .end local v0    # "buttonGroup":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRoot:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->flRightNavigationButtonGroup:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRightNavigationButtonGroup:Landroid/view/ViewGroup;

    .line 101
    iget v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRightNavigationButtonGroupResId:I

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRightNavigationButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgDefaultNavigationButton:Lcom/biznessapps/widgets/CommonNavigationButton;

    invoke-virtual {v1, v4}, Lcom/biznessapps/widgets/CommonNavigationButton;->setVisibility(I)V

    .line 109
    :goto_1
    invoke-direct {p0}, Lcom/biznessapps/widgets/CommonNavigationBar;->updateUI()V

    .line 110
    return-void

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgLeftNavigationButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgRightNavigationButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->vgDefaultNavigationButton:Lcom/biznessapps/widgets/CommonNavigationButton;

    invoke-virtual {v1, v3}, Lcom/biznessapps/widgets/CommonNavigationButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateUI()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method


# virtual methods
.method public applyStyles(Lcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/CommonNavigationBar;->applyTitleBarStyle(Lcom/biznessapps/api/UiSettings;)V

    .line 126
    invoke-direct {p0, p0, p1}, Lcom/biznessapps/widgets/CommonNavigationBar;->applyStyle(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 127
    return-void
.end method

.method public applyTitleBarStyle(Lcom/biznessapps/api/UiSettings;)V
    .locals 6
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v1

    .line 131
    .local v1, "textColor":I
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationTextShadowColor()I

    move-result v2

    .line 132
    .local v2, "textShadowColor":I
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v3

    .line 133
    .local v3, "barColor":I
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getNavTintOpacity()F

    move-result v4

    .line 134
    .local v4, "tintOpacity":F
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v5

    .local v5, "headerUrl":Ljava/lang/String;
    move-object v0, p0

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/widgets/CommonNavigationBar;->initTitleBar(IIIFLjava/lang/String;)V

    .line 137
    return-void
.end method

.method public initTitleBar(IIIFLjava/lang/String;)V
    .locals 10
    .param p1, "textColor"    # I
    .param p2, "textShadowColor"    # I
    .param p3, "barColor"    # I
    .param p4, "tintOpacity"    # F
    .param p5, "headerUrl"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    const v8, 0x3f99999a    # 1.2f

    .line 140
    sget v7, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/widgets/CommonNavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 141
    .local v6, "titleTextView":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 142
    iget-object v7, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    iget-object v7, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual {v6, v8, v8, v8, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 147
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_1
    invoke-virtual {p0, p3}, Lcom/biznessapps/widgets/CommonNavigationBar;->setBackgroundColor(I)V

    .line 152
    invoke-static {p5}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 153
    new-instance v5, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;

    invoke-direct {v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;-><init>()V

    .line 154
    .local v5, "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    invoke-virtual {v5, p3}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintColor(I)V

    .line 155
    invoke-virtual {v5, p4}, Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;->setTintOpacity(F)V

    .line 156
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v3

    .line 157
    .local v3, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    invoke-virtual {v3, p5, p0, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 158
    const-string v7, "custom"

    invoke-virtual {p5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/biznessapps/widgets/CommonNavigationBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 160
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_4

    move-object v7, v4

    .line 161
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    :cond_2
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v2

    .line 166
    .local v2, "headerWidth":I
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v1, 0x8

    .line 168
    .local v1, "headerRatio":I
    :goto_1
    div-int v0, v2, v1

    .line 169
    .local v0, "headerHeight":I
    const/4 v7, -0x1

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    .end local v0    # "headerHeight":I
    .end local v1    # "headerRatio":I
    .end local v2    # "headerWidth":I
    .end local v3    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_3
    :goto_2
    return-void

    .line 162
    .restart local v3    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_4
    instance-of v7, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_2

    move-object v7, v4

    .line 163
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 166
    .restart local v2    # "headerWidth":I
    :cond_5
    const/4 v1, 0x5

    goto :goto_1

    .line 173
    .end local v2    # "headerWidth":I
    .end local v3    # "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "tint":Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;
    :cond_6
    invoke-static {p3}, Lcom/biznessapps/utils/ViewUtils;->getTitleBg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/biznessapps/widgets/CommonNavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/widgets/CommonNavigationBar;->title:Ljava/lang/String;

    .line 59
    return-void
.end method
